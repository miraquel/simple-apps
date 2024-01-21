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

        stage('Test Apps') {
            steps {
                echo "Testing the apps..."
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