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
        git url: 'https://github.com/bhavanamatcha/my-new-project', branch: 'master'
      }
    }

    stage('Install Dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Lint') {
      steps {
        sh 'npm run lint'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t $IMAGE_NAME .'
      }
    }

    stage('Run Docker Container') {
      steps {
        sh 'docker run -d -p 3000:3000 $IMAGE_NAME'
      }
    }
  }
}
