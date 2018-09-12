FROM microsoft/windowsservercore:ltsc2016

# install chocolatey
ENV chocolateyUseWindowsCompression false
RUN powershell -Command \
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
RUN choco feature disable --name showDownloadProgress
RUN choco feature enable -n=allowGlobalConfirmation 

# Install ruby
RUN choco install ruby --version 2.5.1.2 git
RUN gem update --system
