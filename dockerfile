# SPECIFY THE CONTAINER IMAGE
FROM microsoft/windowsservercore:latest

ADD ./setup c:/source

RUN powershell.exe -command \

# COPYING IBM IM FILES TO C drive
Copy-Item c:/source/IIM -Destination c:/IIM -Recurse; \

# Installing IBM IM
cmd.exe /c c:/source/installIM.bat; \

# REMOVE IBM IM FILES FROM SOURCE DIRECTORY
cmd.exe /c rd /S /Q c:\source\IIM; \

# COPYING IBM JAVA SDK
Copy-Item c:/source/IBMSDKJAVA -Destination c:/IBMSDKJAVA -Recurse; \
# EXTRACT ZIP
Expand-Archive C:\IBMSDKJAVA\ibm-java-sdk-8.0-5.11-win-x64-installmgr.zip C:\IBMSDKJAVA\Java; \

# COPYING IBM BASE WAS ZIP
Copy-Item c:/source/BasePackage -Destination c:/BasePackage -Recurse; \
# EXTRACT ZIP
Expand-Archive C:\BasePackage\was.repo.9000.base.zip C:\BasePackage\BaseWAS; \
# INSTALL BASE
cmd.exe /c c:/source/installWASBase.bat; \

# REMOVE IBM IM FILES FROM SOURCE DIRECTORY

cmd.exe /c rd /S /Q c:\IBMSDKJAVA; \
cmd.exe /c rd /S /Q c:\source\IBMSDKJAVA; \
# REMOVE IBM IM FILES FROM SOURCE DIRECTORY

cmd.exe /c rd /S /Q c:\BasePackage; \
cmd.exe /c rd /S /Q c:\source\BasePackage; \

# COPYING IBM FIX PACK
Copy-Item c:/source/fixpacks -Destination c:/fixpacks -Recurse; \
# EXTRACT ZIP
Expand-Archive C:\fixpacks\9.0.0-WS-WAS-FP007.zip C:\fixpacks\fixpackWAS; \
# INSTALL FIX PACK
cmd.exe /c c:/source/installWASFP.bat; \

# REMOVE IBM IM FILES FROM SOURCE DIRECTORY

cmd.exe /c rd /S /Q c:\fixpacks; \
cmd.exe /c rd /S /Q c:\source\fixpacks; \




