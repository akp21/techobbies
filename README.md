# DockerProject1
These are the files used to build a docker image for IBM Websphere 9 server edition- Docker for Windows (Windows container)

The dockerfile has the set of steps to build an image for IBM Websphere 9 on top of a windowsservercore OS

The .bat files are called from within the dockerfile to do the installations in the following order -

1. installIM.bat - install IBM Installation Manager
2. installWASBase.bat - install IBM WAS 9 Base package and IBM Java SDK v8
3. installWASFP.bat - install IBM WAS 9 Fix pack
