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
                sudo cp /root/simple-apps/apps/.env apps/
                '''
            }
        }

        stage('Test Apps') {
            steps {
                sh '''
                cd apps
                npm test
                npm run test:coverage
                '''
            }
        }

        stage('Scanning Code') {
            steps {
                sh '''
                cd apps
                sonar-scanner   -Dsonar.projectKey=simple-apps   -Dsonar.sources=.   -Dsonar.host.url=http://172.23.2.12:9000   -Dsonar.login=sqp_cc66f9c6a7a0d12ec440aed40dbfe3e6a20a78c3
                '''
            }
        }

        stage('Dockerized') {
            steps {
                sh '''
                cd apps
                docker compose build
                '''
            }
        }

        stage('Deploy Apps') {
            steps {
                sh '''
                docker compose up -d
                '''
            }   
        }

        stage('Publish Image') {
            steps {
                sh '''
                docker compose push
                '''
            }
        }
    }
}