pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Setup') {
      steps {
        echo 'Setting up environment'
        // optional: install deps if you need them
        sh 'python3 --version || true'
      }
    }

    stage('Build') {
      steps {
        echo 'Build step (no-op for this demo)'
      }
    }

    stage('Test') {
      steps {
        echo 'Running tests...'
        sh 'chmod +x test.sh'
        sh './test.sh'
      }
    }
  }

  post {
    success {
      echo 'Pipeline succeeded'
    }
    failure {
      echo 'Pipeline failed — check logs'
    }
  }
}
