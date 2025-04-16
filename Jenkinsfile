pipeline {
  agent any

  tools {
    nodejs 'Node22'  // Must match Jenkins tool name
  }

  environment {
    IMAGE_NAME = 'my-npm-app'
  }

  stages {
    stage('Clone Repo') {
      steps {
        git url: 'https://github.com/bhavanamatcha/my-new-project', branch: 'main'
      }
    }

    stage('Install Dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t $IMAGE_NAME .'
      }
    }

    stage('Run Docker Container') {
      steps {
        sh 'docker run -d -p 4036:5000 $IMAGE_NAME'
      }
    }
  }
}
