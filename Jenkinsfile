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
      git 'https://github.com/kjenneycloudhealth/kubernetes-job1.git'
      steps {
        container('bash') {
          sh './test.sh'
        }
      }
    }
  }
}
