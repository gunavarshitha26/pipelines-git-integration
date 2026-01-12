pipeline {
    agent any 

    stages {
        stage('Initialize') {
            steps {
                echo 'Preparing environment...'
            }
        }
        stage('Pull from Git') {
            steps {
                // This step is implicit when using "Pipeline from SCM", 
                // but good to have for clarity.
                checkout scm
            }
        }
        stage('Execute Batch Project') {
            steps {
                // This triggers your .bat file
                bat 'myscript.bat'
            }
        }
    }
    
    post {
        always {
            echo 'Cleaning up workspace...'
        }
        success {
            echo 'The build was successful!'
        }
        failure {
            echo 'The build failed. Check the console output for errors.'
        }
    }
}
