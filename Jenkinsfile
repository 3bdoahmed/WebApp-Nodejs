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
        stage("update image in repo of argocd") {
            steps {
                sshagent(credentials: ['github-ssh-key']) {
                    sh """
                        if [ -d "js-webapp-cd" ]; then 
                            cd WebApp-Nodejs && git pull
                        else 
                           git clone git@github.com:3bdoahmed/js-webapp-cd.git && cd js-webapp-cd
                        fi

                        git config user.email "abd.2002o.ww@gmail.com"
                        git config user.name "3bdoahmed"
                        sed -i "s#.*image:.*#        image: abdelrahman678/web-js-app:v${BUILD_NUMBER}#g" js-webapp-cd/deployment.yml

                        git add js-webapp-cd/deployment.yml
                        git commit -m "change image version to v${BUILD_NUMBER} by jenkins"
                        git push origin main
                    """
                }
            }
        }
    

    }
}
