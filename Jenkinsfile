pipeline {
  agent any
  stages {
    stage('pull') {
      steps {
        git(url: 'https://github.com/kiksen1987/dotnetcore.git', credentialsId: 'github', poll: true)
      }
    }
  }
}