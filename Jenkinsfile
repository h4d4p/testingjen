pipeline {
   agent any

   tools {
      // Install the Maven version configured as "M3" and add it to the path.
      maven 'maven_'
   }
	def getRepoURL() {
	  git "git config --get remote.origin.url > .git/remote-url"
	  return readFile(".git/remote-url").trim()
	}
	   void setBuildStatus(String message, String state) {
	  step([
		  $class: "GitHubCommitStatusSetter",
		  reposSource: [$class: "ManuallyEnteredRepositorySource", url: RepoURL],
		  contextSource: [$class: "ManuallyEnteredCommitContextSource", context: "ci/jenkins/build-status"],
		  errorHandlers: [[$class: "ChangingBuildStatusErrorHandler", result: "UNSTABLE"]],
		  statusResultSource: [ $class: "ConditionalStatusResultSource", results: [[$class: "AnyBuildResult", message: message, state: state]] ]
	  ]);
	}

   stages {
      stage('dev') {
        steps {
           // Get some code from a GitHub repository
           git 'https://github.com/h4d4p/testingjen'

           // Run Maven.
           bat "mvn -f multi_env_pom.xml -P dev compile"
			
			post {
				success {
					setBuildStatus("Build succeeded", "SUCCESS");
				}
				failure {
					setBuildStatus("Build failed", "FAILURE");
				}
        }
      }
   }
}
