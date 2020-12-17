node {
    //agent { dockerfile true } 
    tools {
        maven "3.6.3"
    }
    stage('build') {
        steps{
            sh "mvn -version"
            sh "mvn clean install"
        }
    }
    stage('dockernize') {
        steps{
            sh 'docker build -t sxwdocker/sun-spring-test01:spring.admin.01 -f ./Dockerfile-Admin .'
        }
    }

}
