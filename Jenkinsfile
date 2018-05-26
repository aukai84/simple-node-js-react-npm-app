pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('Build') { 
            steps {
                sh 'docker build -t react-app .'   
                sh 'chmod 0755 *.sh'
            }
        }
        stage('Test') {
            steps {
                echo 'this is your test step'
                sh 'echo $PATH'
                echo 'this is your path'
            }
        }
        stage('Deploy') {
            steps {
                sh './run-docker-app.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'docker kill'
            }
        }
    }
}
