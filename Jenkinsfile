node {
  try {
    stage('Checkout') {
      checkout scm
    }
   stage("Build Prod Dev") {
	
		 steps {
		
		
         script{      
 bat "npm build"   
		
	 }
            }
        	    
    
  
   
  }
  catch (err) {
    throw err
  }
}
