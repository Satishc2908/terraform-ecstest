pipeline 
{
    agent any
 
    stages
    {
        stage('terraform code check-in')
        {
            steps 
            {
                git branch: 'main', url: 'https://github.com/Satishc2908/terraform-ecstest.git'
            }
        }
        stage('Intializing terraform')
        {
            steps 
            {
                sh 'terraform init'
            }
        }
        stage('terraform plan')
        {
            steps 
            {
                sh 'terraform plan'
            }
        }
        stage('Intializing apply or destroy')
        {
            steps 
            {
                sh 'terraform apply --auto-approve'
                //sh 'terraform destroy'
            }
        }
    }
}
