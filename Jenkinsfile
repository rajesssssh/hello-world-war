pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "mvn clean package"
            }
        }
        stage('Deploy') {
            steps {
                sshagent(['0014']) {
                    sh "scp /var/lib/jenkins/workspace/pipeline_job1/target/hello-world-war-1.0.0.war root@13.126.42.57/:opt/apache-tomcat-10.1.34/webapps"
                }
            }
        }
    }
}