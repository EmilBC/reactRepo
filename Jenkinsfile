node {
  try {
    stage('Checkout') {
      checkout scm
    }
    
    stage('Build Docker'){
      sh 'docker -H   tcp://4.tcp.eu.ngrok.io:18364  build -t reactRepo  --no-cache . '
    }
      stage('Deploy Docker Image'){
	    steps{
      	echo "Docker Image Tag Name: ${dockerImageTag}"
	sh "docker -H tcp://4.tcp.eu.ngrok.io:18364 run --name reactRepo -d -p 3000:3000 reactRepo"
	    }
    }
   
  }
  catch (err) {
    throw err
  }
}
