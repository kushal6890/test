pipeline {
    agent any
    stages {
        stage('Creating archive') {
            steps {
                echo "Creating Archive"
                sh ' ssh -i key1.pem -t "user@staplesstaging.craftww.com" "zip /tmp/abc /tmp/abc.zip"'
            }
        }

        stage('Deploy_corpdmz.staples.com') {
            steps {
                echo "Depolying to corpdmz.staples.com"
                sh ' ssh -i key1.pem -t "user@staplesstaging.craftww.com" "scp -i key2.pem /tmp/abc.zip user@corpdmz.staples.com:/tmp/abc.zip"'
            }
        }
        stage('Deploy_preview.staples.com') {
            steps {
                echo "Deploying to preview.staples.com"
                sh 'ssh -i key2.pem -t "user@corpdmz.staples.com" "scp -i key3.pem /tmp/abc.zip user@:/tmp/preview.staples.com'
            }
        }
        stage('Unzipping') {
            steps {
                echo " Extracting arcive on preview.staples.com"
                sh 'ssh -i key3.pem -t "user@preview.staples.com" " uzip /tmp/abc.zip'
            }
        }

    }
}

