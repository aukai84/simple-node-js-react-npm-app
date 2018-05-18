pipeline {
    agent any
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
                echo 'this is your test step'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker build -t react-app .'
                sh 'sudo ./run-docker-app.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'docker kill'
            }
        }
    }
}
