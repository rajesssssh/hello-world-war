pipeline {
    agent any 
    stages {
        stage('checkout') {
            steps {
                sh 'rm -rf hello-world-war'
				sh 'git clone https://github.com/santhosh0811/hello-world-war.git'
            }
        }
		stage('checkout') {
            steps {
                sh 'cd hello-world-war'
				sh 'mvn clean pacakge'
            }
        }
        stage('Deploy') {
            steps {
                sshagent(['0014']) {
				    sh 'rm -rf hello-world-war-1.0.0war'
