 FROM mcr.microsoft.com/windows/servercore:ltsc2019
 RUN PowerShell -Command New-Item -Path "D:" -ItemType "directory" -Name "D:\\UiPath"; \
    Invoke-WebRequest "https://download.uipath.com/UiPathStudio.msi" -OutFile "D:\\UiPathStudio.msi"; \
    Start-Process C:\\UiPathStudio.msi -ArgumentList "ADDLOCAL = DesktopFeature, Robot APPLICATIONFOLDER=C:\\UiPath" -Wait; \
    Remove-Item "D:\\UiPathStudio.msi" -Force
 CMD ["cmd"]