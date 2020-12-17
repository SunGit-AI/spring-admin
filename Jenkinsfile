pipeline {
    agent any
    stages {
        stage('build') {
            steps{
                script {
                    def mvnHome = tool name: 'maven-3', type: 'maven'
                    sh "${mvnHome}/bin/mvn clean deploy -DperformRelease=true"
                }
            }
        }
    }

}
