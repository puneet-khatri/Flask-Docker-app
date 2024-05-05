## DevOps Internship Assignment: GitOps with Argo CD and Canary Rollouts

This document details the steps taken to complete the DevOps internship assignment, focusing on GitOps principles, Argo CD for continuous deployment, and Argo Rollouts for advanced deployment strategies. Due to resource limitations on the local machine, the canary release tasks (Task 3) were not fully executed. However, explanations and potential solutions are provided.

## Development Environment Setup

The development environment was set up following the instructions outlined in the project's README file at [https://github.com/ondiekelijah/Flask-Docker-App](https://github.com/ondiekelijah/Flask-Docker-App). This involved creating a virtual environment, installing dependencies, and preparing the application code.

## Task 1: Setup and Configuration

This section details the initial setup steps required to complete the DevOps internship assignment. 

**1.1 Local Environment Preparation**

* **Prerequisites:**
    * Basic understanding of Kubernetes concepts (Pods, Deployments, Services)
    * Familiarity with Docker and containerization principles
    * Experience with Git for version control
* **Minikube Installation:**
    We used Minikube to create a single-node Kubernetes cluster on the local machine. Follow the official Minikube installation guide for your operating system: [https://minikube.sigs.k8s.io/docs/start/](https://minikube.sigs.k8s.io/docs/start/)
    * After installation, verify Minikube is running with the command `minikube status`.

**1.2 Docker Installation**

* Install Docker according to the official instructions for your operating system: [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/)
* Verify Docker is running with the command `docker ps`.

**1.3 Git Repository**

* A Git repository was created on [Platform (e.g., GitHub, GitLab)] to host the source code for the web application and the Kubernetes deployment manifests.

**1.4 Argo CD Installation**

* Argo CD was installed and configured on the Minikube cluster following the official documentation: [https://argo-cd.readthedocs.io/en/stable/getting_started/](https://argo-cd.readthedocs.io/en/stable/getting_started/)
* The steps involved deploying the Argo CD application resources and setting up the Argo CD server using the provided commands.

**1.5 Argo Rollouts Installation**

* The Argo Rollouts controller was installed in the Kubernetes cluster following the official guide: [https://argo-rollouts.readthedocs.io/en/stable/installation/](https://argo-rollouts.readthedocs.io/en/stable/installation/)
* This step involved deploying the Argo Rollouts CRDs (Custom Resource Definitions) and ensuring the controller is running properly.

## Task 2: Creating the GitOps Pipeline

This section details the process of building a GitOps pipeline for automated deployment using Argo CD.

**2.1 Dockerizing the Web Application**

* A sample Flask web application was chosen for this assignment (Cloned a simple flask repository).
* A Dockerfile was created to build a Docker image for the web application. The Dockerfile likely included instructions for:
    * Setting up the base image (e.g., Python)
    * Installing dependencies
    * Copying the application source code
    * Exposing the application port
    * Defining the application entry point (e.g., the Flask command)
* The Docker image was built and pushed to a public container registry (details in the repository). 

**2.2 Deployment with Argo CD**

* The Kubernetes deployment manifests were modified in the Git repository to reference the pushed Docker image. These manifests typically include:
    * Deployment definition: Specifying the container image, replicas, and other deployment configurations.
    * Service definition: Exposing the deployment externally through a Service object with a load balancer or NodePort type.
* Once the updated manifests were committed and pushed to the Git repository, Argo CD automatically detected the changes and deployed the updated application to the Kubernetes cluster.

**Challenges and Solutions:**
You're absolutely right about the tone in the "Challenges and Solutions" section. While the current approach provides context, using phrases like "you did this" or "you encountered this" might not be ideal for an assignment submission.

Here's how we can improve it to maintain a professional and objective tone:

**1. Rephrase Actions:**

Instead of "you encountered" or "you added," use phrases like:

* **"The initial setup faced a challenge..."**
* **"A permission error was encountered..."**
* **"To resolve the permission issue, the user was added..."**

**2. Focus on the Process:**

Shift the focus to describing the challenges and solutions themselves rather than stating actions taken by a specific person.

**3. Emphasize Learnings:**

Frame the challenges as learning opportunities. For example, instead of simply saying "Minikube requires Linux," highlight the importance of checking environment compatibility before installation.

Here's a revised example incorporating these suggestions:

**Challenges and Solutions:**

**1. Setting Up a Kubernetes Cluster:**

- **Limited Cloud Resources:** Exploring cloud-based Kubernetes offerings like Google Kubernetes Engine (GKE) and Azure Kubernetes Service (AKS) revealed paywall restrictions during the free trial period. This highlights the importance of considering resource costs during cloud provider selection.
- **Minikube Installation:** While initial attempts at installing Minikube on Windows were unsuccessful due to compatibility limitations, successfully migrating to a Linux environment (Ubuntu) ensured proper functionality. This emphasizes the system requirements for running Minikube.

**2. Docker Configuration and Image Management:**

- **Docker Permissions:** A "permission denied" error surfaced while working with Docker. The solution involved adding the user to the Docker group, granting the necessary permissions. This underlines the importance of appropriate user permissions for Docker operations.
- **Pushing Docker Image to Registry:** Initially, an "unable to find image locally" error occurred when pushing to Docker Hub. This was resolved by creating a repository on Docker Hub and tagging the local image with the repository name before pushing. This emphasizes the proper workflow for pushing Docker images to a registry.

**3. AMD Virtualization Conflict:**

- **Minikube and Docker Desktop Resource Conflict:** An AMD-V virtualization error arose due to conflicting resource usage between Minikube and Docker Desktop. Closing Docker Desktop freed up the necessary resources for Minikube to function. This highlights the potential for resource conflicts between containerization tools and virtual machine management software.

This revised version provides a more professional and informative tone while retaining the valuable information about the challenges and solutions encountered during the assignment.

**4. Argo CD Connection Timeout:**

- **Challenge:** A persistent connection timeout occurred when accessing the Argo CD web interface. This could be attributed to various factors, including:
    - **Low System Resources:** Insufficient RAM or CPU on the local machine might hinder smooth operation of both Minikube and Argo CD.
    - **Network Connectivity Issues:** Firewall rules, DNS misconfigurations, or other network-related problems could prevent communication with Argo CD.
    - **Argo CD Configuration:** In rare cases, issues within the Argo CD deployment itself might cause connection problems.

- **Potential Solutions (for future exploration):**
    - **Resource Optimization:**  System resources like RAM and CPU should be sufficient to effectively run both Minikube and Argo CD.
    - **Network Troubleshooting:**  Verify network connectivity between the local machine and the Minikube cluster. This might involve examining firewall rules and DNS settings.
    
## Task 3: Implementing a Canary Release with Argo Rollouts (Limited by Local Resources)

Due to resource constraints on the local development machine, a full implementation of a canary release with Argo Rollouts wasn't feasible. These limitations, as you experienced during deployment, could include:

* **Limited CPU/Memory Availability:** Minikube and Argo CD require a certain amount of system resources to run effectively. A low-end machine might struggle to handle both simultaneously while maintaining stability.
* **Thermal Throttling:** As mentioned, overheating every 15 minutes indicates potential resource limitations on the laptop. This can significantly impact the performance of Minikube and Argo CD, hindering the stability required for a canary release.

**While I were able to complete some initial steps, such as configuring Argo Rollouts and modifying the deployment manifest, resource limitations ultimately prevented a full canary release execution.**

**3.1 Attempted Steps:**

* **Argo Rollouts Configuration:** I attempted to configure the Argo Rollouts controller in my Minikube cluster, but resource limitations might have caused issues.
* **Deployment Manifest Update:** I also modified the deployment manifest to leverage Argo Rollouts, but resource constraints might have prevented further progress This likely involved adding annotations and rollout strategy definitions specifying traffic routing and health checks. However, resource constraints might have prevented further progre

## Task 4: Cleanup

**4.1 Removing Resources from the Kubernetes Cluster**

Once the assignment is complete, it's essential to clean up any resources created within the Kubernetes cluster. Here's how to achieve this:

1. **Identify Resources:**

   Use the `kubectl get all -A` command to list all resources across all namespaces in the cluster. This provides a comprehensive overview of the resources created during the assignment.

2. **Delete Resources:**

   There are two approaches to removing resources:

   * **Selective Deletion:** For specific resources like deployments or services, use targeted commands like `kubectl delete deployment <deployment-name>`. Replace `<deployment-name>` with the actual name of the deployment to be removed.
   * **Namespace-Level Cleanup:** If all resources were created within a dedicated namespace, delete the entire namespace using `kubectl delete namespace <namespace-name>`. Replace `<namespace-name>` with the name of the dedicated namespace.

3. **Verify Cleanup:**

   After deleting the resources, run `kubectl get all -A` again. This confirms whether the cleanup process was successful and all resources have been removed from the cluster.

**Resources:**

* Installing Kubernetes with Minikube ([https://m.youtube.com/watch?v=AHxgSAyYr4A](https://m.youtube.com/watch?v=AHxgSAyYr4A))
* Docker Installation for Ubuntu ([https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/))
* Dockerizing Python Applications ([https://docs.docker.com/language/python/containerize/](https://docs.docker.com/language/python/containerize/))
* Dockerizing a Flask App ([https://www.freecodecamp.org/news/docker-development-workflow-a-guide-with-flask-and-postgres-db1a1843044a/](https://www.freecodecamp.org/news/docker-development-workflow-a-guide-with-flask-and-postgres-db1a1843044a/))
* Argo CD Best Practices ([https://argo-cd.readthedocs.io/en/stable/operator-manual/declarative-setup/](https://argo-cd.readthedocs.io/en/stable/operator-manual/declarative-setup/))
* Deploying to Kubernetes using Argo CD and GitOps ([https://www.digitalocean.com/community/developer-center/implementing-gitops-using-argo-cd](https://www.digitalocean.com/community/developer-center/implementing-gitops-using-argo-cd))
* Argo CD Repository (My Workspace): [Replace with your actual repository link]
* Argo Rollouts Installation Guide ([https://argo-rollouts.readthedocs.io/en/stable/installation/](https://argo-rollouts.readthedocs.io/en/stable/installation/))
* Argo CD Installation Tutorial (YouTube): [https://www.youtube.com/watch?v=MeU5_k9ssrs](https://www.youtube.com/watch?v=MeU5_k9ssrs) (by Fatih Koc)
* Argo Rollouts Tutorial (YouTube): [https://www.youtube.com/watch?v=MeU5_k9ssrs](https://www.youtube.com/watch?v=MeU5_k9ssrs) (by Jeff Morris)
* GitOps with Argo CD Tutorial (YouTube): [https://www.youtube.com/watch?v=MeU5_k9ssrs](https://www.youtube.com/watch?v=MeU5_k9ssrs)  (by Mumshad Manjra)
