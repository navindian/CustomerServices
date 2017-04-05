#!groovy

stage 'CodeFetch'
{
	checkout scm
}

stage 'BuildandPackage'
{
	sh 'mvn clean package'
}

stage 'DockerBuild'
{
	sh 'sudo docker build -t amruthapbhat/customerservices .'
}

stage 'Publish'
{
	sh 'sudo docker login -u amruthapbhat -p dockerhub1234',
	sh 'sudo docker push amruthapbhat/customerservices:latest'
}

stage 'Deploy'
{
	sh 'sudo docker pull amruthapbhat/customerservices'
}
