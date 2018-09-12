FROM microsoft/windowsservercore:ltsc2016

# install chocolatey
ENV chocolateyUseWindowsCompression false
RUN @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
RUN choco feature disable --name showDownloadProgress
RUN choco feature enable -n=allowGlobalConfirmation 

# Install ruby
RUN choco install ruby --version 2.4.1.2 git
RUN gem update --system
