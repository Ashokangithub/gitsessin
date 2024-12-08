pipeline {
    agent any
    
    
    
    stages {
        stage('Checkout Git') {
            steps {
                git branch: 'main', url: 'https://github.com/Ashokangithub/gitsessin.git'
            }
        }
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
        
    }
    post {
        always {
            cleanWs()
        }
    }
}
