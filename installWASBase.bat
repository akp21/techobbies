cd\
cd .\Program Files\IBM\Installation Manager\eclipse\tools\
.\imcl install com.ibm.websphere.BASE.v90 com.ibm.java.jdk.v8 -acceptLicense -showProgress -log installv9.xml -repositories C:\BasePackage\BaseWAS\repository.config,C:\IBMSDKJAVA\Java\repository.config -installationDirectory "C:\Program Files\IBM\WebSphere\AppServer" -sharedResourcesDirectory "C:\Program Files\IBM\IMShared"  -preferences com.ibm.cic.common.core.preferences.keepFetchedFiles=false,com.ibm.cic.common.core.preferences.preserveDownloadedArtifacts=false
