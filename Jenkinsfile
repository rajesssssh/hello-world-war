pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                sshagent(['001']) {
}
                    sh 'ssh-keyscan -H 65.2.143.47 >> ~/.ssh/known_hosts'
                    sh 'scp /var/lib/jenkins/workspace/pipeline_1/target/hello-world-war-1.0.0.war root@65.2.143.47:/opt/apache-tomcat-10.1.34/webapps/'
                }
            }
