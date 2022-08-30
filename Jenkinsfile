pipeline{
    agent any 
    tools{
        maven 'maven'
    }
     triggers {
      
      snapshotDependencies()
     
  }
  stages{
      stage('Build Maven'){
          steps{
              checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'e8ba78a3-4cfc-4d8a-b402-0f60d3c7df71', url: 'https://github.com/asmasihri/applicationgestionachat.git']]])
              sh 'mvn clean install'
          }
      }
      
      stage('Build docker image'){
          steps{
              script{
                  sh 'docker build -t asmahhhh/finalappfinal . '
              }
          }
      }
      stage("Push image to DockerHub"){
          steps{
                script{
         withCredentials([string(credentialsId: 'dockerpwdd', variable: 'dockerpwdd')]) {
              sh 'docker login -u asmahhhh -p ${dockerpwdd}'
         }
              sh 'docker push  asmahhhh/finalappfinal '
              
          }
          }
        
      }
  }
}