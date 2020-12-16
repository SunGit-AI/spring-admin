pipeline {
    stages {
        stage('build') {
            steps{
                script {
                    sh 'mvn clean deploy -DperformRelease=true'
                }
            }
        }
    }

}