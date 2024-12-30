resource "aws_instance" "airbnb-web" {

  ami           =var.ami_id

  instance_type = var.instance_type
  tags={
    Name="Judes-ownnn"
  }
}



/*
def COLOR_MAP = [

    'SUCCESS': 'good',

    'FAILURE': 'danger',

    ]


  post  { 
        always { 
         
           echo 'I will always say Hello again!'
            slackSend channel: '#jjtech-empower-batch', color: COLOR_MAP[currentBuild.currentResult], message: "Done by Jude. *${currentBuild.currentResult}:* Job ${env.JOB_NAME} build ${env.BUILD_NUMBER} \n More info at: ${env.BUILD_URL}"
        }
    }
    
   



stage('checkov scan') {
    steps {
        
        sh 'sudo yum install python3-pip'        // Install the package python3-pip
        sh 'sudo yum remove python3-requests'   // Remove the package python3-requests already with the AMI
        sh 'sudo pip3 install requests'        //  Use pip3 to install the package called request
        sh 'sudo pip3 install checkov'        //   Use pip3 to install the package called checkov
     //    sh 'checkov -d . --skip-check CKV_AWS_79,CKV2_AWS_41'  // use checkov to scan the terraform code
      }
}
*/