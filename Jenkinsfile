pipeline{
    agent {
        label "agent-01"
    }
    environment {
        DOCKER_USERNAME = credentials("docker_username")
        DOCKER_PASSWORD = credentials("docker_password")
    }
    stages{
        stage("build docker file"){
            steps{
                sh "docker build -t abdelrahman678/web-js-app:v${BUILD_NUMBER} ."
            }
        }
    stage("push image to dockerhub"){
        steps{
            sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}"
            sh "docker push abdelrahman678/web-js-app:v${BUILD_NUMBER}"
        }
        }

    }
}