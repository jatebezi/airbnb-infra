

pipeline {
    agent any
    
    tools {
        terraform    'Terraform'
    }
    
    stages {
        stage( 'git checkout') {
            steps {
                echo 'cloning codbase'
               git branch: 'main', credentialsId: '16c33cab-ce38-41b4-b664-4ba1d9815794', url: 'https://github.com/jatebezi/airbnb-infra.git'
                sh 'ls'
            }
        }
        
        stage( 'terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage( 'terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('checkov scan') {
            steps {

                sh 'sudo yum install python3-pip'        // Install the package python3-pip
                sh 'sudo yum remove python3-requests'   // Remove the package python3-requests already with the AMI
                sh 'sudo pip3 install requests'        //  Use pip3 to install the package called request
                sh 'sudo pip3 install checkov'             //   Use pip3 to install the package called checkov
           //    sh 'checkov -d . --skip-check CKV_AWS_79,CKV2_AWS_41'  // use checkov to scan the terraform code
            }
        }

        stage( 'terraform apply ') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        } 
    }
    
}   