pipeline{
    agent any

    stages{
        stage('git branch'){
            steps{
                sh"""
                pwd 
                if [[ -e spring-petclinic ]]              
                then
                rm -r spring-petclinic
                fi
                """
                git branch:"main", url:"https://github.com/spring-projects/spring-petclinic.git"
            }
        }
    }
}