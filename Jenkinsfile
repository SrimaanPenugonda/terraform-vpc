pipeline{
    agent any

    tools{
        terraform 'Terraform14.3'
    }

    stages{
        stage('Terraform Apply'){
          steps{
            sh '''
              sudo yum install make -y  
              make dev-init
              make dev-apply  
            '''
          }
        }
    }//stages
}//pipeline