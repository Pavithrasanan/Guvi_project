**Project Overview**



This project demonstrates a complete CI/CD pipeline for deploying a containerized web application to Amazon EKS using:



1\. AWS CodePipeline – CI/CD automation



2\. AWS CodeBuild – Build Docker image \& deploy to EKS



3\. AWS ECR – Container registry



4\. Amazon EKS – Kubernetes cluster hosting the application



5\. Elastic Load Balancer – Exposes the app publicly



**Pipeline Explanation:**



1\. Developer commits code to GitHub



CodePipeline triggers automatically.



2\. CodePipeline → CodeBuild



CodeBuild performs:



Docker login



Docker build



Push image to ECR



Update Kubernetes deployment using kubectl



Rolling update of pods



3\. EKS Deployment



Kubernetes pulls the new image and updates pods.



4\. Service (LoadBalancer)



A Classic ELB exposes the app publicly



**Technologies Used**



1. AWS ECR



2\. AWS EKS



3\. AWS CodePipeline



4\. AWS CodeBuild



5\. Elastic Load Balancer



6\. Kubernetes (Deployments, Pods, Service)



7\. Docker



8\. GitHub

