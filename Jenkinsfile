pipeline {
  agent any
  stages {
    stage('dev') {
      steps {
        git(url: 'https://github.com/h4d4p/testingjen.git', branch: 'master')
        bat 'mvn -f multi_env_pom.xml -P dev compile'
      }
    }

  }
  tools {
    maven 'maven_'
  }
}