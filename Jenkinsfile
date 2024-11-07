pipeline{
  agent any
  stages {
      stage ('Build Docker Image'){
          steps{
            git branch: 'main', url:'https://github.com/sarahabdulle1/lbg-car-react-starter.git'
          }
      }

      stage ('Install'{
          steps {
            sh "npm install"
          }
      }

      stage ('Test'){
          steps {
            sh "npm test"
          }
      }     
    }
  }
