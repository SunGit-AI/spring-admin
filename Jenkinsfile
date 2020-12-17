pipeline {
    agent any
    tools {
        maven "3.6.3"
    }
    stages {
        stage('build') {
            steps{
                sh "mvn -version"
                script {
                    def mvnHome = tool name: '', type: 'maven'
                    sh "${mvnHome}/bin/mvn clean deploy -DperformRelease=true"
                }
            }
        }
    }

}
