pipeline {
	 agent any
  stages {
    stage('Checkout') {
      steps{
	  checkout scm
	      } 
    }
   stage("Build Prod Dev") {
	
		 steps {
		
		
         script{      
 bat "npm run build "   
		
	 }
            }
        	    
    
   }
      stage('Build Docker Image') {
	    steps{
     sh "docker -H   tcp://4.tcp.eu.ngrok.io:18364 build -t reactapp:${env.BUILD_NUMBER} ."
	    }
    }
  }
 
}
