cat <<EOF>> /etc/yum.repos.d/kube.repo 
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
         https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

sudo yum install kubeadm kubelet kubectl 
sudo systemctl start kubelet
sudo systemctl enable kubelet
sudo kubeadm init
sudo systemctl stop firewalld
sudo systemctl disable firewalld
