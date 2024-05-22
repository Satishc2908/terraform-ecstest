pipeline 
{
    agent any

    stages
    {
        stage('Intializing terraform')
        {
            steps 
            {
                sh 'terraform init'
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
