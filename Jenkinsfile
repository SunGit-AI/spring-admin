pipeline {
    agent { dockerfile true } 
    tools {
        maven "3.6.3"
    }
    stages {
        stage('build') {
            steps{
                sh "mvn -version"
                sh "mvn clean install"
            }
        }
        stage('dockernize') {
            steps{
                docker.build("sun-spring-test01", "-t spring.admin.01 .")
            }
        }
    }

}
