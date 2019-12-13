#!/bin/bash

OS=$($TOOLBOX_HOME/bin/whatos.sh)
echo TOOLBOX_HOME=$TOOLBOX_HOME
echo OS=$OS

# Appsody
TOOL=Appsody_and_Controller
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/appsody/appsody/releases/download/0.4.6/appsody-0.4.6-linux-amd64.tar.gz -O $TOOLBOX_HOME/$OS/appsody-0.4.6-linux-amd64.tar.gz
        wget -q https://github.com/appsody/controller/releases/download/0.2.4/appsody-controller -O $TOOLBOX_HOME/bin/appsody-controller
        chmod +x $TOOLBOX_HOME/bin/appsody-controller
        cd $TOOLBOX_HOME/$OS
        tar xfz appsody-0.4.6-linux-amd64.tar.gz appsody
        mv appsody appsody-0.4.6
        rm -f appsody-0.4.6-linux-amd64.tar.gz
        cd - > /dev/null
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/appsody/appsody/releases/download/0.4.6/appsody-0.4.6-darwin-amd64.tar.gz -O $TOOLBOX_HOME/$OS/appsody-0.4.6-darwin-amd64.tar.gz
        wget -q https://github.com/appsody/controller/releases/download/0.2.4/appsody-controller -O $TOOLBOX_HOME/bin/appsody-controller
        chmod +x $TOOLBOX_HOME/bin/appsody-controller
        cd $TOOLBOX_HOME/$OS
        tar xfz appsody-0.4.6-darwin-amd64.tar.gz appsody
        mv appsody appsody-0.4.6
        rm -f appsody-0.4.6-darwin-amd64.tar.gz
        cd - > /dev/null
fi

# Calicoctl
TOOL=Calicoctl
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/projectcalico/calicoctl/releases/download/v3.9.1/calicoctl-linux-amd64 -O $TOOLBOX_HOME/$OS/calicoctl-3.9.1
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/projectcalico/calicoctl/releases/download/v3.9.1/calicoctl-darwin-amd64 -O $TOOLBOX_HOME/$OS/calicoctl-3.9.1
fi


# Go Dep 
TOOL=GoDep
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/golang/dep/releases/download/v0.5.4/dep-linux-amd64 -O $TOOLBOX_HOME/$OS/dep-0.5.4
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/golang/dep/releases/download/v0.5.4/dep-darwin-amd64 -O $TOOLBOX_HOME/$OS/dep-0.5.4
fi

# GitHub Hub
TOOL=GithubHub
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/github/hub/releases/download/v2.12.8/hub-linux-amd64-2.12.8.tgz -O $TOOLBOX_HOME/$OS/hub-linux-amd64-2.12.8.tgz
        cd $TOOLBOX_HOME/$OS
        tar xfz hub-linux-amd64-2.12.8.tgz hub-linux-amd64-2.12.8/bin/hub
        mv hub-linux-amd64-2.12.8/bin/hub hub-2.12.8
        rm -fr hub-linux-amd64-2.12.8
        rm -f hub-linux-amd64-2.12.8.tgz
        cd - > /dev/null
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/github/hub/releases/download/v2.12.8/hub-darwin-amd64-2.12.8.tgz -O $TOOLBOX_HOME/$OS/hub-darwin-amd64-2.12.8.tgz
        cd $TOOLBOX_HOME/$OS    
        tar xfz hub-darwin-amd64-2.12.8.tgz hub-darwin-amd64-2.12.8/bin/hub
        mv hub-darwin-amd64-2.12.8/bin/hub hub-2.12.8
        rm -fr hub-darwin-amd64-2.12.8
        rm -f hub-darwin-amd64-2.12.8.tgz
        cd - > /dev/null
fi

# Helm 
TOOL=Helm
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://get.helm.sh/helm-v3.0.0-linux-amd64.tar.gz -O $TOOLBOX_HOME/$OS/helm-v3.0.0-linux-amd64.tar.gz
        cd $TOOLBOX_HOME/$OS
        tar xfz helm-v3.0.0-linux-amd64.tar.gz linux-amd64/helm
        mv linux-amd64/helm helm-3.0.0
        rm -fr linux-amd64
        rm -f helm-v3.0.0-linux-amd64.tar.gz
        cd - > /dev/null
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://get.helm.sh/helm-v3.0.0-darwin-amd64.tar.gz -O $TOOLBOX_HOME/$OS/helm-v3.0.0-darwin-amd64.tar.gz
        cd $TOOLBOX_HOME/$OS    
        tar xfz helm-v3.0.0-darwin-amd64.tar.gz darwin-amd64/helm
        mv darwin-amd64/helm helm-3.0.0
        rm -fr darwin-amd64
        rm -f helm-v3.0.0-darwin-amd64.tar.gz
        cd - > /dev/null
fi

# knctl 
TOOL=knctl
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/cppforlife/knctl/releases/download/v0.3.0/knctl-linux-amd64 -O $TOOLBOX_HOME/$OS/knctl-0.3.0
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/cppforlife/knctl/releases/download/v0.3.0/knctl-darwin-amd64 -O $TOOLBOX_HOME/$OS/knctl-0.3.0
fi


# kubectl 
TOOL=kubectl_1_14
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/linux/amd64/kubectl -O $TOOLBOX_HOME/$OS/kubectl-1.14.0
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/darwin/amd64/kubectl -O $TOOLBOX_HOME/$OS/kubectl-1.14.0
fi

# kubectl 
TOOL=kubectl_1_13
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl -O $TOOLBOX_HOME/$OS/kubectl-1.13.0
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/darwin/amd64/kubectl -O $TOOLBOX_HOME/$OS/kubectl-1.13.0
fi

# kubectl 
TOOL=kubectl_1_15
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://storage.googleapis.com/kubernetes-release/release/v1.15.0/bin/linux/amd64/kubectl -O $TOOLBOX_HOME/$OS/kubectl-1.15.0
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://storage.googleapis.com/kubernetes-release/release/v1.15.0/bin/darwin/amd64/kubectl -O $TOOLBOX_HOME/$OS/kubectl-1.15.0
fi

# oc 
TOOL=oc_3_11
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q  https://mirror.openshift.com/pub/openshift-v4/clients/oc/4.4/linux/oc.tar.gz -O $TOOLBOX_HOME/$OS/oc.tar.gz
        cd $TOOLBOX_HOME/$OS
        tar xfz $TOOLBOX_HOME/$OS/oc.tar.gz
        mv oc oc-4.4
        rm -fr $TOOLBOX_HOME/$OS/oc.tar.gz
        cd - > /dev/null
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q  https://mirror.openshift.com/pub/openshift-v4/clients/oc/4.4/macosx/oc.tar.gz -O $TOOLBOX_HOME/$OS/oc.tar.gz
        cd $TOOLBOX_HOME/$OS    
        tar xvfz $TOOLBOX_HOME/$OS/oc.tar.gz
        mv oc oc-4.4
        rm -fr $TOOLBOX_HOME/$OS/oc.tar.gz
        cd - > /dev/null
fi

# octant 
TOOL=Octant
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/vmware-tanzu/octant/releases/download/v0.9.1/octant_0.9.1_Linux-64bit.tar.gz -O $TOOLBOX_HOME/$OS/octant_0.9.1_Linux-64bit.tar.gz 
        cd $TOOLBOX_HOME/$OS
        tar xfz octant_0.9.1_Linux-64bit.tar.gz octant_0.9.1_Linux-64bit/octant
        mv octant_0.9.1_Linux-64bit/octant octant-0.9.1
        rm -fr octant_0.9.1_Linux-64bit
        rm -f  octant_0.9.1_Linux-64bit.tar.gz
        cd - > /dev/null
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/vmware-tanzu/octant/releases/download/v0.9.1/octant_0.9.1_macOS-64bit.tar.gz -O $TOOLBOX_HOME/$OS/octant_0.9.1_macOS-64bit.tar.gz
        cd $TOOLBOX_HOME/$OS    
        tar xfz octant_0.9.1_macOS-64bit.tar.gz octant_0.9.1_macOS-64bit/octant
        mv octant_0.9.1_macOS-64bit/octant octant-0.9.1
        rm -fr octant_0.9.1_macOS-64bit
        rm -f  octant_0.9.1_macOS-64bit.tar.gz
        cd - > /dev/null
fi

# Stern 
TOOL=Stern
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/wercker/stern/releases/download/1.11.0/stern_linux_amd64 -O $TOOLBOX_HOME/$OS/stern-1.11.0
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/wercker/stern/releases/download/1.11.0/stern_darwin_amd64 -O $TOOLBOX_HOME/$OS/stern-1.11.0
fi

# Operator SDK 
TOOL=Operator_SDK
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/operator-framework/operator-sdk/releases/download/v0.10.0/operator-sdk-v0.10.0-x86_64-linux-gnu -O $TOOLBOX_HOME/$OS/operator-0.10.0
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://github.com/operator-framework/operator-sdk/releases/download/v0.10.0/operator-sdk-v0.10.0-x86_64-apple-darwin -O $TOOLBOX_HOME/$OS/operator-0.10.0
fi

# IBM Cloud CLI 
TOOL=IBM_CLOUD_CLI
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q  https://clis.cloud.ibm.com/download/bluemix-cli/0.20.0/linux64/archive -O $TOOLBOX_HOME/$OS/archive
        cd $TOOLBOX_HOME/$OS
        tar xfz archive 
        mv -f IBM_Cloud_CLI IBM_Cloud_CLI-0.20.0
        ln -sf IBM_Cloud_CLI-0.20.0/ibmcloud ./ibmcloud-0.20.0
        rm -f archive 
        cd - > /dev/null
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        wget -q https://clis.cloud.ibm.com/download/bluemix-cli/0.20.0/osx/archive -O $TOOLBOX_HOME/$OS/archive
        cd $TOOLBOX_HOME/$OS
        tar xfz archive 
        mv -f IBM_Cloud_CLI IBM_Cloud_CLI-0.20.0
        ln -sf IBM_Cloud_CLI-0.20.0/ibmcloud ./ibmcloud-0.20.0
        rm -f archive 
        cd - > /dev/null
fi

# Istioctl
TOOL=istioctl
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        cd $TOOLBOX_HOME/$OS
        curl -sL https://git.io/getLatestIstio | ISTIO_VERSION=1.4.0-beta.4 sh -
        mv -f istio-1.4.0-beta.4 istio_1.4.0
        ln -sf istio_1.4.0/bin/istioctl ./istioctl-1.4.0
        rm -fr /usr/local/bin/istioctl
        cd - > /dev/null
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        cd $TOOLBOX_HOME/$OS
        curl -sL https://git.io/getLatestIstio | ISTIO_VERSION=1.4.0-beta.4 sh -
        mv -f istio-1.4.0-beta.4 istio_1.4.0
        ln -sf istio_1.4.0/bin/istioctl ./istioctl-1.4.0
        rm -fr /usr/local/bin/istioctl
        cd - > /dev/null
fi

## Special cases follow
## these typically use predefined install methods like brew/apt to get software loaded on the host

TOOL=eternal_terminal
if [ "$OS" == "linux" ]; then
        echo "Fetching $TOOL for $OS"
        apt install -y software-properties-common
        add-apt-repository ppa:jgmath2000/et
        apt update
        apt install -y et
elif [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        brew install MisterTea/et/et
fi

TOOL=kontena.io_lens
if [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        curl https://kontena-lens-desktop.s3-eu-west-1.amazonaws.com/Lens-2.5.1.dmg -o ~/Downloads/Lens-2.5.1.dmg
        open ~/Downloads/Lens-2.5.1.dmg 
fi

TOOL=ibm_kui
if [ "$OS" == "mac" ]; then
        echo "Fetching $TOOL for $OS"
        curl -L https://macos-tarball.kui-shell.org/ | tar jxf -
        mv Kui-darwin-x64/Kui.app /Applications/Kui.app
        rm -fr Kui-darwin-x64
fi

chmod +x $TOOLBOX_HOME/$OS/*
