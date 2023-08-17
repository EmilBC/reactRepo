pipeline {
	
    agent any
	environment {
   mvnHome = tool 'maven-3.9.2'
   dockerImage=""
dockerImageTag = "devopsexamplenew${env.BUILD_NUMBER}"
		 dockerHome = tool 'MyDocker' 
}
   
    stages {
	stage('SCM') {
	      steps{
	  checkout scm
	      }    }
        stage("Build Prod") {
		 steps {
		  script{      
		bat "npm start"
		  }
			 }
	}
	




	    
    

	    
      
   	
  
  
    
   



	    
    }
    
}
