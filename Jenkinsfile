pipeline {
   agent any

   tools {
      // Install the Maven version configured as "M3" and add it to the path.
      maven 'maven_'
   }


   stages {
      stage('Build') {
         steps {
            // Get some code from a GitHub repository
            git 'https://github.com/h4d4p/testingjen'

            // Run Maven.
            bat "mvn -f multi_env_pom.xml -P dev compile"
         }
      }
   }
}
