FROM arms3/uipath-robot:latest
RUN PowerShell -Command Install-PackageProvider -Name NuGet -Force; \
    Register-PSRepository -Name UiPath -SourceLocation https://www.myget.org/F/uipath-dev/api/v2; \
    Install-Module -Repository UiPath -Name UiPath.Powershell -Force
CMD ["cmd"]