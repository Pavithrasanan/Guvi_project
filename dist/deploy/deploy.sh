#!/bin/bash
set -e

echo "Updating kubeconfig..."
aws eks update-kubeconfig --region $AWS_REGION --name brain-tasks-cluster

echo "Deploying to EKS..."

kubectl set image deployment/brain-tasks-app \
  brain-tasks-app=$AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/brain-tasks-app:latest

kubectl rollout status deployment/brain-tasks-app

