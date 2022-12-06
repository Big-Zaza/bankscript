pipeline{
    agent {
        label 'slave1'
    }
    stages{
        stage('1. Check Ram memory in megabytes'){
            steps{
                sh 'free -m'
            }
        }

        stage('2. Testing parallel jobs'){
            agent{
                label 'slave2'
            }
            parallel{
            stage('1. Sub-job1'){
                steps{
                    sh 'df -h'
                }
            }
            stage('2. Sub-job2'){
                steps{
                    sh 'whoami'
                }
            }
            }
            }
    
          
        stage('4. Check cpu statistics'){
            agent{
            label 'master'
          }
            steps{
                sh 'lscpu'
            }
            
        }
        
        }
}
