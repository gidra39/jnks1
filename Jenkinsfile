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
      stage('Git cloning'){
      steps {
      sh 'git clone https://github.com/gidra39/jnks2.git /home/jenkins/pytest'
       }
     }
    stage('Docker build'){
      steps {
      sh 'cd /home/jenkins/pytest'
        sh 'echo 12345 | sudo -S docker build -t gidra39/jnkst .'
       }
     }
     stage('Docker image push'){
      steps {
        sh ' echo 12345 | sudo -S docker image push gidra39/jnkst'
       }
     }
    stage('Cleanup'){
      steps {
        sh 'echo 12345 | sudo -S rm /home/jenkins/pytest -r'
       }
     }
  }
}
