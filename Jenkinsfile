pipeline {
    agent {
        node{
            label 'devops-chaidir'
        }
    }

    stages {
        stage('Build Apps') {
            steps {
                sh '''
                cd apps
                npm install
                '''
            }
        }

        stage('Copy env file') {
            steps {
                sh '''
                cp /root/simple-apps/.env apps/
                '''
            }
        }

        stage('Test Apps') {
            steps {
                sh '''
                cd apps
                npm test
                npm test:coverage
                '''
            }
        }

        stage('Scanning Code') {
            steps {
                echo "Scanning the code..."
            }
        }

        stage('Dockerized') {
            steps {
                echo "Dockerizing the apps..."
            }
        }

        stage('Deploy Apps') {
            steps {
                echo "Deploying the apps..."
            }   
        }

        stage('Publish Image') {
            steps {
                echo "Publishing the image..."
            }
        }
    }
}