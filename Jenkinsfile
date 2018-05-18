pipeline {
    agent any
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
                sh 'docker run react-app -u root -p 3000:3000 -v .:/usr/app/ -v /usr/app/node_modules' 
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'docker kill'
            }
        }
    }
}
