pipeline {
    agent any

     parameters {
        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Choose the action apply or destroy')
      
    }

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/dublicate.main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Mraakhil/s3terraform.git']])
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }   
         stage ("terraform fmt") {
            steps {
                sh ('terraform fmt') 
            }
        }  
        stage ("terraform validate") {
            steps {
                sh ('terraform validate') 
            }
        }  
        
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
    
}
