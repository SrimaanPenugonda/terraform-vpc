pipeline{
    agent any

    tools{
        terraform 'Terraform14.3'
    }

    stages{
        stage('Terraform Apply'){
          steps{
            sh '''
              make dev-init
              make dev-apply  
            '''
          }
        }
    }//stages
}//pipeline