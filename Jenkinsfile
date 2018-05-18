pipeline {
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') { 
            steps {
                echo 'this is where you would build' 
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose up -d'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'docker-compose down'
            }
        }
    }
}
