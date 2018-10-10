

pipeline {
    agent any
    stages {
        stage('corpdmz.staples.com') {
            steps {
                echo "copying from corpdmz.staples.com"
                sh 'sftp craftsworksin@corpdmz.staples.com:/files/continuous-deploy-test/2018_10_08_cd_test.zip ${WORKSPACE}/2018_10_08_cd_test.zip'
            }
        }
    stage('upload') {
            steps {
                echo "Uploading to artifactory"
               sh '"curl -u redku001:Hanuman6890  -X PUT "http://zrepo.staples.com/artifactory/craftworks-artifacts-local/2018_10_08_cd_test.zip" ${WORKSPACE}/2018_10_08_cd_test.zip'
            }
        }        
    }
}
