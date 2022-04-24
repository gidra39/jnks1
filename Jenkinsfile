pipeline {
  agent {
          label 'ubuntu-s'
         }
  stages {
    stage('Docker version'){
      steps {
      sh 'echo $USER'
      sh 'sudo docker ps'
      sh 'echo 12345 | sudo -S <cmd>'
       }
     }
   }
}
