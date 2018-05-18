pipeline {
    agent any
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
                sh 'docker run react-app --rm -u root -p 3000:3000 -v .:/usr/app/ -v /usr/app/node_modules' 
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'docker kill'
            }
        }
    }
}
