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
            
            parallel{
                
            stage('1. Sub-job1'){
                agent{
                label 'slave2'
            }
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
            label 'slave1'
          }
            steps{
                sh 'lscpu'
            }
            
        }
        
        }
}
