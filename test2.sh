#!/bin/bash

USERNAME=craftworksin
SERVER=corpdmz.staples.com
ARTIFACTORY_USERNAME=redku001
ARTIFACTORY_PASSWORD=AKCp5bCBKTxzAAKXrRABhQNziVmSr6mPGKjWBcxxksgvHVhwRi5ewrJP1H9eg7FsgnN8B65Ux

echo "copying from corpdmz.staples.com"
cd /tmp && sftp ${USERNAME}@${SERVER}:/files/continuous-deploy-test/2018_10_08_cd_test.zip .
echo "Uploading to artifactory"
curl -u redku001:Hanuman6890 -T /tmp/2018_10_08_cd_test.zip "http://zrepo.staples.com/artifactory/craftworks-artifacts-local/2018_10_08_cd_test.zip"
