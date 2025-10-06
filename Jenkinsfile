pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/NahidHn/cicd-jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jenkins-nodejs-docker-demo:latest .'
            }
        }

        stage('Run Container (Test)') {
            steps {
                sh 'docker run -d -p 3000:3000 --name nodejs-demo jenkins-nodejs-docker-demo:latest'
            }
        }

        stage('Verify Build') {
            steps {
                sh 'docker ps | grep nodejs-demo'
            }
        }
    }

    post {
        always {
            echo 'Cleaning up...'
            sh 'docker stop nodejs-demo || true'
            sh 'docker rm nodejs-demo || true'
        }
    }
}
