pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Setup Python') {
            steps {
                docker.image('python:3.11-slim').inside {
                    sh '''
                        python -m pip install --upgrade pip
                        pip install -r requirements.txt
                        pytest test.py
                    '''
                }
            }
        }
    }
}