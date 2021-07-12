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
				// sh 'pip install -U pip --user'
				// sh 'pip install -r requirements.txt --user'
				sh 'python -m venv flask-jenkins'
				sh 'source flask-jenkins/bin/activate'
				sh 'python -m pip install --upgrade pip'
				sh 'python -m pip install -r requirements.txt'
			}
		}
		stage('test') {
			steps {
				sh 'python test.py'
			}
		}
	}
}
