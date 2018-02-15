pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'ls && cd dotnetcore && dotnet publish'
      }
    }
  }
}