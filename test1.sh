#!/bin/bash

USERNAME=craftworksin
SERVER=corpdmz.staples.com
ARTIFACTORY_USERNAME=
ARTIFACTORY_PASSWORD=

echo "copying from corpdmz.staples.com"
cd /tmp && sftp ${USERNAME}@${SERVER}:/files/continuous-deploy-test/2018_10_08_cd_test.zip .
echo "Uploading to artifactory"
curl -u ${ARTIFACTORY_USERNAME}:${ARTIFACTORY_PASSWORD}  -X PUT \"http://zrepo.staples.com/artifactory/craftworks-artifacts-local/2018_10_08_cd_test.zip\" /tmp/2018_10_08_cd_test.zip"

