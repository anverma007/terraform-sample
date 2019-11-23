node{
    
	jdk = tool name: 'jenkins-jdk'
    env.JAVA_HOME = "${jdk}"
	
	
	stage('GITHUB CHECKOUT'){
		git 'https://github.com/rathoremayank/terraform-sample.git'
	}
	
	stage('CREATING EC2 USING TF'){
	    sh label: '', script: 'terraform init'
	    sh label: '', script: 'terraform plan'
	    sh label: '', script: 'terraform apply -input=false -auto-approve'
		
	}
	
	stage('DESTROYING EC2'){
		sh label: '', script: 'terraform destroy -input=false -auto-approve'
	}
	
	
	
}
