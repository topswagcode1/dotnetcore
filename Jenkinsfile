pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'checkout https://github.com/kiksen1987/dotnetcore.git && cd dotnetcore && dotnet publish'
      }
    }
  }
}