pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building project...'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy complete!'
            }
        }
        stage('Notify') {
            steps {
                echo '🎉 Code push detected! Jenkins build triggered automatically. its look beautiful '
            }
        }
    }
}
