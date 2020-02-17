pipeline {
  agent any
  stages {
    stage('dev') {
      steps {
        git(url: 'https://github.com/h4d4p/testingjen.git', branch: 'master')
      }
    }

  }
  tools {
    maven 'maven_'
  }
}