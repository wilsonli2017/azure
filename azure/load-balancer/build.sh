#!/bin/bash
VER=1.0.0
BNAME="azure-appgw"
AZURE_APPGW_FILES="appgw-sample.xml azuredeploy.json azureDeploy.parameters.json nsg-new.json private-lb-password.json private-lb-sshPublicKey.json publicip-new.json public-lb-layer-7.json setupNICS-new.json setupNICS-untrust.json storageAccount-existing.json storageAccount-new.json virtual-machine-password-bs-no.json virtual-machine-password-bs-yes.json virtual-machine-sshPublicKey-bs-no.json virtual-machine-sshPublicKey-bs-yes.json vmseries.json vnet-existing.json vnet-new.json"
# clean up
rm -fr $BNAME.$VER.zip $BNAME-$VER.md5sum.txt

md5sum * > $BNAME-$VER.md5sum.txt
zip -r $BNAME.$VER.zip *
md5sum $BNAME.$VER.zip >> $BNAME-$VER.md5sum.txt

