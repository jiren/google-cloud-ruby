# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Compute
      module V1
        module NodeGroups
          module Rest
            # GRPC transcoding helper methods for the NodeGroups REST API.
            module GrpcTranscoding
              # @param request_pb [::Google::Cloud::Compute::V1::AddNodesNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_add_nodes request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}/addNodes"
                body = request_pb.node_groups_add_nodes_request_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListNodeGroupsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_aggregated_list request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/aggregated/nodeGroups"
                body = nil
                query_string_params = {}
                query_string_params["filter"] = request_pb.filter.to_s if request_pb.has_filter?
                query_string_params["includeAllScopes"] = request_pb.include_all_scopes.to_s if request_pb.has_include_all_scopes?
                query_string_params["maxResults"] = request_pb.max_results.to_s if request_pb.has_max_results?
                query_string_params["orderBy"] = request_pb.order_by.to_s if request_pb.has_order_by?
                query_string_params["pageToken"] = request_pb.page_token.to_s if request_pb.has_page_token?
                query_string_params["returnPartialSuccess"] = request_pb.return_partial_success.to_s if request_pb.has_return_partial_success?

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::DeleteNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_delete request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}"
                body = nil
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::DeleteNodesNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_delete_nodes request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}/deleteNodes"
                body = request_pb.node_groups_delete_nodes_request_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::GetNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}"
                body = nil
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::GetIamPolicyNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get_iam_policy request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.resource}/getIamPolicy"
                body = nil
                query_string_params = {}
                query_string_params["optionsRequestedPolicyVersion"] = request_pb.options_requested_policy_version.to_s if request_pb.has_options_requested_policy_version?

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::InsertNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_insert request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups"
                body = request_pb.node_group_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::ListNodeGroupsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_list request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups"
                body = nil
                query_string_params = {}
                query_string_params["filter"] = request_pb.filter.to_s if request_pb.has_filter?
                query_string_params["maxResults"] = request_pb.max_results.to_s if request_pb.has_max_results?
                query_string_params["orderBy"] = request_pb.order_by.to_s if request_pb.has_order_by?
                query_string_params["pageToken"] = request_pb.page_token.to_s if request_pb.has_page_token?
                query_string_params["returnPartialSuccess"] = request_pb.return_partial_success.to_s if request_pb.has_return_partial_success?

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::ListNodesNodeGroupsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_list_nodes request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}/listNodes"
                body = nil
                query_string_params = {}
                query_string_params["filter"] = request_pb.filter.to_s if request_pb.has_filter?
                query_string_params["maxResults"] = request_pb.max_results.to_s if request_pb.has_max_results?
                query_string_params["orderBy"] = request_pb.order_by.to_s if request_pb.has_order_by?
                query_string_params["pageToken"] = request_pb.page_token.to_s if request_pb.has_page_token?
                query_string_params["returnPartialSuccess"] = request_pb.return_partial_success.to_s if request_pb.has_return_partial_success?

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::PatchNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_patch request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}"
                body = request_pb.node_group_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::SetIamPolicyNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_set_iam_policy request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.resource}/setIamPolicy"
                body = request_pb.zone_set_policy_request_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::SetNodeTemplateNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_set_node_template request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.node_group}/setNodeTemplate"
                body = request_pb.node_groups_set_node_template_request_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::TestIamPermissionsNodeGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_test_iam_permissions request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/nodeGroups/#{request_pb.resource}/testIamPermissions"
                body = request_pb.test_permissions_request_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end
              extend self
            end
          end
        end
      end
    end
  end
end
