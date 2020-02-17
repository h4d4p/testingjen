pipeline {
  agent any
  stages {
    stage('dev') {
      steps {
        git(url: 'https://github.com/h4d4p/testingjen.git', branch: 'master')
        bat(script: 'mvn -f multi_env_pom.xml -P dev compile', encoding: 'UTF-8')
      }
    }

  }
  tools {
    maven 'maven_'
  }
}