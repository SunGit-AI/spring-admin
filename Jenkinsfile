pipeline {
    agent any
    stages {
        stage('build') {
            steps{
                script {
                    def mvnHome = tool name: '', type: 'maven'
                    sh "${mvnHome}/bin/mvn clean deploy -DperformRelease=true"
                }
            }
        }
    }

}
