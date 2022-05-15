pipeline {
  agent {
          label 'ubuntu-s'
         }
  stages {
    stage('Password encryption'){
      steps{
      wrap([$class: 'MaskPasswordsBuildWrapper', varPasswordPairs: [[password: '12345', var: 'SECRET']]]) {
      echo "12345";
         }
      }
    }
    stage('Docker version'){
      steps {
        wrap([$class: 'MaskPasswordsBuildWrapper', varPasswordPairs: [[password: '12345', var: 'SECRET']]]) {
      sh 'echo $USER'
      sh 'echo 12345 | sudo -S docker version'
        }
       }
    }
      stage('Git cloning'){
      steps {
         wrap([$class: 'MaskPasswordsBuildWrapper', varPasswordPairs: [[password: '12345', var: 'SECRET']]]) {
        sh 'echo 12345 | sudo -S rm /home/jenkins/pytest -r'
        }
      sh 'git clone https://github.com/gidra39/jnks2.git /home/jenkins/pytest'
       }
     }
    stage('Cleanup'){
      steps {
        wrap([$class: 'MaskPasswordsBuildWrapper', varPasswordPairs: [[password: '12345', var: 'SECRET']]]) {
        sh 'echo 12345 | sudo -S rm /home/jenkins/pytest -r'
        }
       }
     }
  }
}
