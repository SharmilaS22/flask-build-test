pipeline {
	agent { 
		docker { 
			image 'python:3.9.2'
			args '-u root:root'
		}
	}
	stages {
		stage('build') {
			steps {
				sh 'pip install -U pip --user'
				sh 'pip install -r requirements.txt --user'
			}
		}
		stage('test') {
			steps {
				sh 'python test.py'
			}
		}
	}
}
