pipeline {
    agent any
    parameters {
        choice(
            name: 'AWS_EC2_TYPE',
            choices: ['t2.micro', 't2.medium','t2.large'],
            description: ''
        )
    }
    environment {
        aws_secret_access_key   = credentials('aws_secret_access_key')
        aws_secret_access_key = credentials('aws_secret_access_key')
    }
    stages {
//         stage('git clone') {
//             steps {
//               git 'https://github.com/Phani808/Demo-Swhizz.git'
//             }
//         }
        
        stage('terraform init') {
            steps {
              sh "terraform init" 
            }
        }
        
        stage('terraform plan') {
            steps {
                script {
                   def  ec2type= params.AWS_EC2_TYPE
                    println ec2type
                    sh  "ls -ll"
                    sh "pwd"
                    sh "export TF_LOGS=trace"
                   // sh "terraform init && terraform plan -var 'type=${params.AWS_EC2_TYPE}' -no-color" 
                }
            }
        }
        
        stage('terraform apply') {
            steps {
              sh "terraform apply -var 'type=${params.AWS_EC2_TYPE}' -no-color --auto-approve"

            }
        }
        
//         stage('ansible playbook') {
//             steps {
//                 sh "ls -ll && pwd"
                
//               sh "ansible-playbook ansible.yml -vvvvv"
//             }
//         }
    }
}
