FROM arms3/uipath-robot:latest
# uipath/robot:2018.4.1

 # New-Item -Path "C:\UiPath" -ItemType "directory"; \
# RUN PowerShell -Command New-Item -Path "C:\UiPath" -ItemType "directory"; \
   # Invoke-WebRequest "https://download.uipath.com/UiPathStudio.msi" -OutFile "C:\UiPathStudio.msi"; \
   # Start-Process C:\UiPathStudio.msi -ArgumentList 'ADDLOCAL=DesktopFeature,Robot' -Wait; \
   # Remove-Item "C:\UiPathStudio.msi" -Force
CMD ["cmd"]