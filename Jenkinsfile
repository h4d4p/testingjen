pipeline {
   agent any

		tools {
		// Install the Maven version configured as "M3" and add it to the path.
		maven 'maven_'
		}
	
		def getRepoURL() {
		sh "git config --get remote.origin.url > .git/remote-url"
		return readFile(".git/remote-url").trim()
		}

		def getCommitSha() {
		  sh "git rev-parse HEAD > .git/current-commit"
		  return readFile(".git/current-commit").trim()
		}

		def updateGithubCommitStatus(build) {
		  // workaround https://issues.jenkins-ci.org/browse/JENKINS-38674
		  repoUrl = getRepoURL()
		  commitSha = getCommitSha()

		  step([
			$class: 'GitHubCommitStatusSetter',
			reposSource: [$class: "ManuallyEnteredRepositorySource", url: repoUrl],
			commitShaSource: [$class: "ManuallyEnteredShaSource", sha: commitSha],
			errorHandlers: [[$class: 'ShallowAnyErrorHandler']],
			statusResultSource: [
			  $class: 'ConditionalStatusResultSource',
			  results: [
				[$class: 'BetterThanOrEqualBuildResult', result: 'SUCCESS', state: 'SUCCESS', message: build.description],
				[$class: 'BetterThanOrEqualBuildResult', result: 'FAILURE', state: 'FAILURE', message: build.description],
				[$class: 'AnyBuildResult', state: 'FAILURE', message: 'Loophole']
			  ]
			]
		  ])
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
   
		post {
		success {
			setBuildStatus("Build succeeded", "SUCCESS");
		}
		failure {
			setBuildStatus("Build failed", "FAILURE");
		}
		}
}