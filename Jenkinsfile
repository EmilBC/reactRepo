pipeline {
	 agent any
  stages {
    stage('Checkout') {
      checkout scm
    }
   stage("Build Prod Dev") {
	
		 steps {
		
		
         script{      
 bat "npm run build "   
		
	 }
            }
        	    
    
   }
   
  }
 
}
