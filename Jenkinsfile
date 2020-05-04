//Creacion de un pipeline con diferentes jobs. Meter un index.html a dos server apache en docker
pipeline {
  agent any
  stages {
      stage('Comprobar git'){
          steps{
            git poll: true, url: 'https://github.com/isx46410800/M14_Jenkins.git'
          }
      }
      stage('Build docker'){
          steps{
            sh '''
              docker build -t isx46410800/appflask:jenkins .
            '''
          }
      }
      stage('Run docker'){
          steps{
            sh '''
              docker run --rm --name appflask -h appflask -d isx46410800/appflask:jenkins
            '''
          }
      }
  }

}
