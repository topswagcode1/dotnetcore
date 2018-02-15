pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'cd dotnetcore && dotnet publish'
      }
    }
  }
}