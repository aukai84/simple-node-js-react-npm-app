pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('Build') { 
            steps {
                sh 'docker build -t react-app .'   
            }
        }
        stage('Test') {
            steps {
                echo 'this is your test step'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run react-app -p 3000:3000' 
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'docker kill'
            }
        }
    }
}
