pipeline{
    agent any
    stages{
        stage('1. Check Ram memory in megabytes'){
            steps{
                sh 'free -m'
            }
        }
        stage('2. Check disk free space'){
            steps{
                sh 'df -h'
            }
        }
        stage('3. Check cpu statistics'){
            steps{
                sh 'lscpu'
            }
        }
    }
}
