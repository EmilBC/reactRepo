node {
  try {
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
  catch (err) {
    throw err
  }
}
