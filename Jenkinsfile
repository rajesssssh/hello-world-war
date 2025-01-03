pipeline {
        agent { label 'slave2' }
    stages {
        stage('Checkout') {
            steps {
               sh 'rm -rf hello-world-war'
               sh 'git clone https://https://github.com/rajesssssh/hello-world-war.git/'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}

