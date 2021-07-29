 FROM mcr.microsoft.com/windows/servercore:ltsc2019
 RUN PowerShell -Command New-Item -Path "C:\\\\" -ItemType "directory" -Name "C:\\UiPath"; \
    Invoke-WebRequest "https://download.uipath.com/UiPathStudio.msi" -OutFile "C:\\UiPathStudio.msi"; \
    Start-Process C:\\UiPathStudio.msi -ArgumentList "ADDLOCAL = DesktopFeature, Robot APPLICATIONFOLDER=C:\\UiPath" -Wait; \
    Remove-Item "C:\\UiPathStudio.msi" -Force; \
    Install-PackageProvider -Name NuGet -Force; \
    C:\>Register-PSRepository -Name UiPath -SourceLocation https://www.myget.org/F/uipath-dev/api/v2; \
    C:\>Install-Module -Repository UiPath -Name UiPath.Powershell -Force
 CMD ["cmd"]