# Copyright 2017 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "spanner_helper"

describe "Spanner Instances", :spanner do
  let(:instance_id) { $spanner_instance_id }

  it "lists and gets instances" do
    all_instances = spanner.instances.all.to_a
    all_instances.wont_be :empty?
    all_instances.each do |instance|
      instance.must_be_kind_of Google::Cloud::Spanner::Instance
    end

    first_instance = spanner.instance all_instances.first.instance_id
    first_instance.must_be_kind_of Google::Cloud::Spanner::Instance
  end

  describe "get instance" do
    it "get all instance fields" do
      instance = spanner.instance instance_id

      instance.instance_id.must_equal instance_id
      instance.path.wont_be_empty
      instance.display_name.wont_be_empty
      instance.nodes.must_be :>, 0
      instance.state.must_equal :READY
    end

    it "get speicified instance fields" do
      instance = spanner.instance instance_id, fields: ["name"]

      instance.instance_id.must_equal instance_id
      instance.path.wont_be_empty
      instance.display_name.must_be_empty
      instance.nodes.must_equal 0
      instance.state.must_equal :STATE_UNSPECIFIED
    end
  end

  describe "IAM Policies and Permissions" do
    let(:service_account) { spanner.service.credentials.client.issuer }

    it "allows policy to be updated on an instance" do
      all_instances = spanner.instances.all.to_a
      instance = spanner.instance all_instances.first.instance_id
      # Check permissions first
      roles = ["spanner.instances.getIamPolicy", "spanner.instances.setIamPolicy"]
      permissions = instance.test_permissions roles
      skip "Don't have permissions to get/set topic's policy" unless permissions == roles

      instance.policy.must_be_kind_of Google::Cloud::Spanner::Policy

      # We need a valid service account in order to update the policy
      service_account.wont_be :nil?
      role = "roles/viewer"
      member = "serviceAccount:#{service_account}"
      instance.policy do |p|
        p.add role, member
        p.add role, member # duplicate member will not be added to request
      end

      role_member = instance.policy.role(role).select { |x| x == member }
      role_member.size.must_equal 1
    end
  end
end
