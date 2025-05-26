pipeline {
    agent any

    stages {
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-java-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker rm -f my-java-app-container || true'
                sh 'docker run -d --name my-java-app-container -p 8081:8080 my-java-app'
            }
        }
    }

    post {
        success {
            echo '✅ Deployment successful!'
        }
        failure {
            echo '❌ Build failed. Check logs.'
        }
    }
}
