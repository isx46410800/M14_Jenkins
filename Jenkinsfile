//Creacion de un pipeline con diferentes jobs. Meter un index.html a dos server apache en docker
pipeline {
  agent any
  stages {
      stage('Comprobar repositorio git'){
          steps{
            git poll: true, url: 'https://github.com/isx46410800/M14_Jenkins.git'
          }
      }
      stage('Construimos imagen docker'){
          steps{
            sh '''
              docker build -t isx46410800/appflask:jenkins .
            '''
          }
      }
      stage('Desplegamos la app en el container docker'){
          steps{
            sh '''
              docker run --rm --name appflask -h appflask -d isx46410800/appflask:jenkins
            '''
          }
      }
      stage('Commit de la imagen para DockerHub'){
          steps{
            sh '''
              docker committ appflask isx46410800/appflask:jenkins
            '''
          }
      }
      stage('Push imagen a DockerHub'){
          steps{
            sh '''
              docker push isx46410800/appflask:jenkins
            '''
          }
      }
      stage('Paramos el container'){
          steps{
            sh '''
              docker stop appflask
            '''
          }
      }
      stage('Eliminamos la imagen creada'){
          steps{
            sh '''
              docker rmi -f isx46410800/appflask:jenkins
            '''
          }
      }
      stage('Mensaje de finalización'){
          steps{
            sh '''
              echo "Pipeline finalizado!!"
            '''
          }
      }
  }
}
