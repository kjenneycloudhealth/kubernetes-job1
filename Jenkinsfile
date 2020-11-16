pipeline {
  agent {
    kubernetes {
      label 'promo-app'
      idleMinutes 5
      yamlFile 'build-pod.yaml'
      defaultContainer 'bash'
    }
  }
  stages {
    stage('Run a bash script') {
      steps {
        container('bash') {
          sh './test.sh'
        }
      }
    }
  }
}
