# Deploy a sample public AKS cluster

## Pre-requisites:
1. You already have an active Azure Subscription
2. You have a Github account and you can perform basic operations
3. You have basic understanding of git operations.

## Steps:

1. Login to your Github account Fork the repo to your github account: https://github.com/Bapic/createSimpleAKSonAzure.git

2. Login to Azure portal and launch Cloud Shell 

4. Run the below commands to clone the repo locally. 

        git clone https://github.com/Bapic/createSimpleAKSonAzure.git
    
        cd createSimpleAKSonAzure
	
	    git remote show origin 
           (or git remote -v)
        
        # Ensure your repo is set to use your repo as the origin
	
4. Run the below command to deploy a sample AKS on Azure

	    bash createSimpleAKSonAzure.ps1
	
5. Once done, run the below commands to check the configuration. Also check the portal for the deployment.

6. Deploy a sample application based on available image by running the deployVoteApp.ps1. It basically applies the vote-app.yaml file to the AKS cluster.

        kubectl apply -f vote-app.yaml
        