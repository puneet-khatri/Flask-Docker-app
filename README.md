## DevOps Internship Assignment: GitOps with Argo CD and Canary Rollouts

This document details the steps taken to complete the DevOps internship assignment, focusing on GitOps principles, Argo CD for continuous deployment, and Argo Rollouts for advanced deployment strategies. Due to resource limitations on the local machine, the canary release tasks (Task 3) were not fully executed. However, explanations and potential solutions are provided.

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

* A sample Flask web application was chosen for this assignment (replace with details of your chosen application).
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

* (Describe any challenges encountered during this task, and how you resolved them. For example, issues with the Dockerfile, deployment manifest configuration, or integration with Argo CD.)

**Next Section:** Task 3: Implementing a Canary Release with Argo Rollouts (Outline & Explanation)░

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


<!-- # Flask-Docker-App

## Set up & Installation.

### 1 .Clone/Fork the git repo and create a virtual environment 
                    
**Windows**
          
```bash
git clone https://github.com/Dev-Elie/Flask-Docker-App.git
cd Flask-Docker-App
py -3 -m venv venv

```
          
**macOS/Linux**
          
```bash
git clone https://github.com/Dev-Elie/Flask-Docker-App.git
cd Flask-Docker-App
python3 -m venv venv

```
### 2 .Activate the environment
          
**Windows** 

```venv\Scripts\activate```
          
**macOS/Linux**

```. venv/bin/activate```
or
```source venv/bin/activate```


### 3 .Install the requirements

Applies for windows/macOS/Linux

```
pip install -r requirements.txt
```

### 5. Run the application
`python app.py`

# OR

## Create a new application from scratch

### 1. Create a directory with a name **"Flask-Docker-App"**
`mkdir Flask-Docker-App`

### 2. Navigate to the newly created directory

`cd Flask-Docker-App`

### 3. Create a virtual environment

**Windows**

`py -3 -m venv venv`
<br>

**macOS/Linux**

`python3 -m venv venv`

### 4. Activate the environment
          
**Windows** 

```venv\Scripts\activate```
          
**macOS/Linux**

```. venv/bin/activate```
or
```source venv/bin/activate```

### 3 .Install Flask

`pip install Flask`

### 4. Create the required files
Create two files; **app.py** and **Dockerfile**

`touch app.py Dockerfile` -->
