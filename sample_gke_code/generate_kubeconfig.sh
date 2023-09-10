#!/bin/bash

# Generate kubeconfig for GKE cluster
gcloud container clusters get-credentials $YOUR_CLUSTER_NAME --region $YOUR_REGION --project $YOUR_PROJECT_ID

# Save kubeconfig to a file
#mv ~/.kube/config /path/to/output/kubeconfig
