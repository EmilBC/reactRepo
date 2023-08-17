node {
  try {
    stage('Checkout') {
      checkout scm
    }
    
    stage('Build Docker test'){
      sh 'docker -H  tcp://2.tcp.eu.ngrok.io:16232 build -t reactRepo -f Dockerfile.test --no-cache . '
    }
    stage('Docker test'){
      sh 'docker -H  tcp://2.tcp.eu.ngrok.io:16232 run --rm react-test'
    }
    stage('Clean Docker test'){
      sh 'docker rmi react-test'
    }
    stage('Deploy'){
      if(env.BRANCH_NAME == 'master'){
        sh 'docker build -t react-app --no-cache .'
        sh 'docker tag react-app localhost:5000/react-app'
        sh 'docker push localhost:5000/react-app'
        sh 'docker rmi -f react-app localhost:5000/react-app'
      }
    }
  }
  catch (err) {
    throw err
  }
}
