pipeline {
    agent any

    environment {
        // Define environment variables here if needed
        AWS_DEFAULT_REGION = 'ap-south-1' // example region
        TF_VAR_aws_region = 'ap-south-1'
        TF_VAR_environment = 'production'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from the repository
                git url: 'https://github.com/your-repo/your-terraform-config.git', branch: 'main'
            }
        }

        stage('Install Terraform') {
            steps {
                // Install Terraform
                sh 'curl -LO https://releases.hashicorp.com/terraform/1.3.0/terraform_1.3.0_linux_amd64.zip'
                sh 'unzip terraform_1.3.0_linux_amd64.zip'
                sh 'mv terraform /usr/local/bin/'
                sh 'terraform -v'
            }
        }

        stage('Terraform Init') {
            steps {
                // Initialize Terraform
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                // Validate the Terraform configuration
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                // Plan the Terraform deployment
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                // Apply the Terraform plan
                sh 'terraform apply tfplan'
            }
        }
    }

    post {
        always {
            // Clean up workspace and send notifications if needed
            cleanWs()
        }
        success {
            // Send success notification
            echo 'Deployment succeeded'
        }
        failure {
            // Send failure notification
            echo 'Deployment failed'
        }
    }
}
