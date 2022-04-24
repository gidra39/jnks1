pipeline {
  agent {
          label 'ubuntu-s'
         }
  stages {
    stage('Docker version'){
      steps {
      sh 'echo $USER'
      sh 'echo 12345 | sudo -S docker version'
       }
     }
   }
}
