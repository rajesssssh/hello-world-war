pipeline {
        agent { label 'slave2' }
    stages {
        stage('Checkout') {
            steps {
               sh 'rm -rf hello-world-war'
               sh 'git clone https:///'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
             stage('Deploy') {
            steps {
                sh 'cp /opt/jenkins/workspace/jenkinsjob1/target/hello-world-war-1.0
