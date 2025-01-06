resource "aws_instance" "airbnb-web" {

  ami           =var.ami_id
  instance_type = var.instance_type
  monitoring = true
  ebs_optimized = true

  tags={
    Name="Judes-manmmn"
  }
}




/*def COLOR_MAP = [

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




/*pipeline {
    agent any
    tools{
        maven 'localMaven'
        jdk 'localjdk'
    }

    stages {
        stage('git checkout') {
            steps {
                echo 'cloning codebase'
                git branch: 'main', credentialsId: '629aa824-155f-4c5c-b403-66ad6eab0695', url: 'https://github.com/jatebezi/jenkins-cicd-app-pipleline-pro.git'
                sh 'ls'
            }
        }
        
        
        stage('Build') { 
            steps {
                
                
                sh 'mvn clean package'
        }   
        
        post {
            success {
              echo 'now Archiving'
              archiveArtifacts artifacts: '**.war'
                
            }
        }
        
        stage('Unit Test'){
            steps {
                sh 'mvn test'
            }
        }
        
        stage('Intergartion Test'){
            steps {
                sh 'mvn verify -DskipUnitTests'
            }
        }
        A
        A
   }
   
}
/*