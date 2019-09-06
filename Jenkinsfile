pipeline {
  agent {
    docker { image 'mcr.microsoft.com/dotnet/core/sdk:2.2' }
  }
  stages {
    stage('pull') {
      steps {
        git(url: 'https://github.com/kiksen1987/dotnetcore.git', credentialsId: 'github', poll: true)
      }
    }
    stage('build') {
      steps {
        sh 'ls && dotnet publish && ls'
      }
    }
  }
}
