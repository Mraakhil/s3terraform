pipeline {
    agent any 
    environment {
        TERRAFORM_HOME = tool name: 'Terraform', type: 'hudson.plugins.tfs.TerraformInstallation'
    }

    parameters {
        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Choose the action apply or destroy')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/Mraakhil/s3terraform.git']]])
            }
        }

        stage('Terraform Init') {
            steps {
                sh "${TERRAFORM_HOME}/terraform init"
            }
        }   

        stage('Terraform Fmt') {
            steps {
                sh "${TERRAFORM_HOME}/terraform fmt"
            }
        }  

        stage('Terraform Validate') {
            steps {
                sh "${TERRAFORM_HOME}/terraform validate"
            }
        }  

        stage('Terraform Action') {
            steps {
                echo "Terraform action is --> ${params.action}"
                sh "${TERRAFORM_HOME}/terraform ${params.action} --auto-approve"
            }
        }
    }
}
