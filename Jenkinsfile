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
    stage('Replace values in yaml') {
      environment {
        ACCESS_KEY = credentials('ACCESS_KEY')
        SECRET_KEY = credentials('SECRET_KEY')
      }
      steps {
        container('bash') {
          sh './yaml-replace.sh'
        }
      }
    }
  }
}
