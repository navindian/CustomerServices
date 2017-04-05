   node {
   def mvnHome
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/amruthapbhat/CustomerServices.git'
      // Get the Maven tool.
      // ** NOTE: This 'M3' Maven tool must be configured
      // **       in the global configuration.           
      mvnHome = tool 'Maven'
   }

stage('Build') {
      // Run the maven build      
         sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean package"
   }
      
      stage ('DockerBuild') {
         
       sh 'sudo docker build -t amruthapbhat/customerservices .'
      }
      
      stage ('DockerPublish') {
         sh ' sudo docker login -u amruthapbhat -p dockerhub1234'
         sh 'sudo docker push amruthapbhat/customerservices:latest'
      }
      
      stage ('Deploy') {
         sh 'sudo docker pull amruthapbhat'
      }
   }
