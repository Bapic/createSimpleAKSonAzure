$name="sampleAKSonAzure01"
$location="eastus"
az group create -l eastus -n $name
az aks create -n $name -g $name --node-count 1 --enable-addons monitoring --generate-ssh-keys
az aks get-credentials -n $name -g $name
set-content clusterinfo.txt (kubectl config get-contexts)
add-content clusterinfo.txt (kubectl get svc)
add-content clusterinfo.txt (kubectl get nodes)
add-content clusterinfo.txt (kubectl get pods)
add-content clusterinfo.txt (kubectl get ns --show-labels)
add-content clusterinfo.txt (kubectl -n cluster-config get deploy  -o wide)
add-content clusterinfo.txt (kubectl cluster-info)
code clusterinfo.txt

