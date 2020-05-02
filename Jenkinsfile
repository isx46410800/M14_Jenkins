//Creacion de un pipeline con diferentes jobs
// Meter un index.html a dos server apache en docker

pipeline {
    agent any

    stages {
        stage('Comprobar repo GITHUB') {
            steps {
                git poll: true, url: 'https://github.com/isx46410800/M14_Jenkins.git'
            }
        }
        stage('Construimos imagen Docker-ApacheServer') {
            steps {
                docker build -t isx46410800/apache:jenkins .
            }
        }
        stage('Desplegamos container con apache-server1') {
            steps {
                docker run --rm --name apache1 -h apache1 -p 80:80 -d isx46410800/apache:jenkins
            }
        }
	stage('Desplegamos container con apache-server2') {
            steps {
                docker run --rm --name apache2 -h apache2 -p 80:80 -d isx46410800/apache:jenkins
            }
        }
	stage('Construimos index.html de Apache-server1') {
            steps {
                docker cp index1.html apache2:/var/www/html/.
            }
        }
	stage('Construimos index.html de Apache-server2') {
            steps {
                docker cp index1.html apache2:/var/www/html/.
            }
        }

    }
}
