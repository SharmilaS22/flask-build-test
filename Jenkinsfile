pipeline {
	agent { docker { image 'python:3.9.2' } }
	stages {
		stage('build') {
			steps {
				sh 'pip install -r requirements.txt'
			}
		}
		stage('test') {
			steps {
				sh 'python test.py'
			}
		}
	}
}
