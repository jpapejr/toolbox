#!/bin/bash

# Loop through all IBM Cloud regions and dump out the clusters we find

printf "$(tput setaf 6)Dumping all clusters in the account...$(tput sgr0)"
for region in us-east us-south uk-south eu-central ap-north ap-south; do
  printf "\n$(tput setaf 3)--- [ Region set to $region ]---$(tput sgr0)"
  ibmcloud ks region-set $region 
  ibmcloud ks clusters -s
done
  
