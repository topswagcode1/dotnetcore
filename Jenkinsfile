pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'checkout dotnetcore && cd dotnetcore && dotnet publish'
      }
    }
  }
}