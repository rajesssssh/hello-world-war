pipeline {
    agent any 
    stages {
        stage('checkout') {
            steps {
                sh 'rm -rf hello-world-war'
	        sh 'git clone https://github.com/rajesssssh/hello-world-war.git'
            }
        }
    }
		stage('build') {
            steps {
	        sh 'mvn clean pacakge'
            }
        }
}
        
