FROM mcr.microsoft.com/windows/servercore:ltsc2019
RUN mkdir "C:\UiPath"
 # New-Item -Path "C:\UiPath" -ItemType "directory"; \
RUN PowerShell -Command Invoke-WebRequest "https://download.uipath.com/UiPathStudio.msi" -OutFile "C:\UiPathStudio.msi"; \
   Start-Process C:\UiPathStudio.msi -ArgumentList 'ADDLOCAL=DesktopFeature,Robot,Studio APPLICATIONFOLDER=C:\UiPath' -Wait; \
   #Remove-Item "C:\UiPathStudio.msi" -Force
CMD ["cmd"]