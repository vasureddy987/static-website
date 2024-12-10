Portfolio Static Website Setup with Docker, Minikube, and Kubernetes
This guide will help you build and deploy a static portfolio website using Docker and Kubernetes. We'll use Nginx as a base image to serve the HTML and CSS files, and then deploy the containerized application using Minikube and Kubernetes.

Prerequisites
Before you begin, make sure you have the following installed:

Docker
Minikube
kubectl
A Docker Hub account
Steps to Deploy the Portfolio Website
Step 1: Prepare the Files
Ensure you have the following files in your project folder:

index.html: The main HTML file for the portfolio website.
style.css: The CSS file for styling the website.
Dockerfile: The Docker configuration file for building the Docker image.
Step 2: Build the Docker Image
Navigate to the folder containing your index.html, style.css, and Dockerfile.

Build the Docker image using the following command:

docker build -t portfolio .
Step 3: Tag the Docker Image
Tag the Docker image with your Docker Hub repository name:

docker tag portfolio:latest vasureddy987/portfolio
Step 4: Push the Docker Image to Docker Hub
Push the tagged image to Docker Hub:

docker push vasureddy987/portfolio:latest
Step 5: Create a Kubernetes Deployment
Create a file named deployment.yaml for the Kubernetes deployment.

Apply the deployment using the following command:

kubectl apply -f deployment.yaml
Verify the pods are running:

kubectl get pods
Step 6: Create a NodePort Service
Create a file named service.yaml for the NodePort service.

Apply the service using the following command:

kubectl apply -f service.yaml
Verify the service is created:

kubectl get svc
Step 7: Get Minikube IP
Retrieve the Minikube IP to access the deployed service:

minikube ip
Step 8: Port Forward to Access the Service
To access the website locally, use the following port forwarding command:

kubectl port-forward svc/portfolio-svc 8081:80
This will forward port 80 of the service to port 8081 on your local machine.

Step 9: Access the Website
Open your browser and access the portfolio website via:

http://localhost:8081
Troubleshooting
Port Forwarding Issues: If you encounter errors with port forwarding, ensure the port you are trying to forward is not already in use.
Service Not Accessible: Make sure that the Kubernetes cluster is running and that the portfolio-svc service is correctly exposed.
This guide will help you build, deploy, and access your portfolio website both locally via Minikube and Kubernetes.






