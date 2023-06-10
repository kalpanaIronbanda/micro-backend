pipeline {
    agent any 
    stages {
        stage("build"){
            steps {
                script {
            sh """
            aws ecr get-login-password --region ap-southeast-2 | sudo docker login --username AWS --password-stdin 315073111691.dkr.ecr.ap-southeast-2.amazonaws.com
            sudo docker build -t backend .
            sudo docker tag backend:latest 315073111691.dkr.ecr.ap-southeast-2.amazonaws.com/backend:latest .
            sudo docker push 315073111691.dkr.ecr.ap-southeast-2.amazonaws.com/backend:latest
            """
        }
         }
    }
}
}