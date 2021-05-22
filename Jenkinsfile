pipeline{
    agent any

    tools{ //Global Tool call
        terraform 'Terraform14.3'
    }
    environment { //Manage Credentials
        AWS = credentials('AWS')
    }

    stages{
        stage('Terraform Apply'){
          steps{
            sh ''' 
              export AWS_ACCESS_KEY_ID=${AWS_USR}
              export AWS_SECRET_ACCESS_KEY=${AWS_PSW}  
              make dev-init
              make dev-apply  
            '''
          }
        }
    }//stages
}//pipeline