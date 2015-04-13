#!/bin/bash

wget http://pydev.org/pydev_certificate.cer
CERT="pydev_certificate.cer"
KEYSTORE=/usr/lib/jvm/default-java/jre/lib/security/cacerts
PASS="changeit"

#keytool -import -storepass ${PASS} -keystore ${KEYSTORE} -file ./pydev_certificate.cer
keytool -import -file pydev_certificate.cer  -keystore /usr/lib/jvm/default-java/jre/lib/security/cacerts -storepass changeit -noprompt
echo "oki"
