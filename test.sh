#!/bin/bash
echo "copying from corpdmz.staples.com"
cd ${WORKSPACE}  && sftp ${USERNAME}@corpdmz.staples.com:/files/continuous-deploy-test/2018_10_08_cd_test.zip .
echo "Uploading to artifactory"
curl -u ${ARTI_USERNAME}:${ARTI_PASSWORD}  -X PUT \"http://zrepo.staples.com/artifactory/craftworks-artifacts-local/2018_10_08_cd_test.zip\" ${WORKSPACE}/2018_10_08_cd_test.zip"

