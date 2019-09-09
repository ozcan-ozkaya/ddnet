Write-Output '*** Debug info'

& docker $config version
& docker-compose $config version

Write-Output '*** Pulling build images'

& docker $config image pull microsoft/dotnet-framework-build:4.7.1-windowsservercore-ltsc2016
& docker $config image pull dockersamples/mta-dev-web-builder:4.7.1

Write-Output '*** Building test runner'

& docker $config image build -t dtrapp-dockeree-jjpo.uksouth.cloudapp.azure.com/ozcan/ddnet/mta-dev-test-runner -f .\Dockerfile .
