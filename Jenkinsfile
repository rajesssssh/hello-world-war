pipeline {
        agent { label 'slave2' }
    stages {
        stage('Checkout') {
            steps {
               sh 'rm -rf hello-world-war'
               sh 'git clone https://github.com/rajesssssh/hello-world-war.git/'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Deploy') {
            steps {
                sh 'scp /opt/jenkins/workspace/pipeline_job3/target/hello-world-war-1.0.0.war root@172.31.37.174:/opt/apache-tomcat-10.1.34/webapps/
            }
                        }  

post {
    success {
        mail to: "rajesh0807r@gmail.com",
             subject: "Jenkins Job Success",
             body: "The Jenkins job completed successfully."
    }
    failure {
        mail to: "rajesh0807r@gmail.com",
             subject: "Jenkins Job Failed",
             body: "The Jenkins job failed. Check the logs for details."
    }
}
    }
}

            
