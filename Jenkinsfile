pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('Build') { 
            steps {
                sh 'docker build -t react-app .'   
                sh 'npm install'
                sh 'chmod 0755 *.sh'
            }
        }
        stage('Test') {
            steps {
                echo 'this is your test step'
            }
        }
        stage('Deploy') {
            steps {
                sh 'npm start'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'docker kill'
            }
        }
    }
}
