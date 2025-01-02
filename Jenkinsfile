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
                sh 'cd hello-world-war'
				sh 'mvn clean pacakge'
            }
        }
        stage('Deploy') {
            steps {
		
	    }
	}
}
