# Run Steps (in Jenkins)

## 1. Create a new pipeline job

- Name: `nodejs-docker-pipeline`

- Type: **Pipeline**

- Choose: “Pipeline script from SCM”

- SCM: Git

- Repo URL: `https://github.com/YOUR_USERNAME/jenkins-nodejs-docker-demo.git`

- Branch: `main`

- Script path: `Jenkinsfile`

## 2. Run build
- Jenkins automatically:

- Pulls repo → `git clone`

- Builds Docker image

- Runs container (port 3000)

- Verifies container running

## 3. Test locally:
তোমার Jenkins server বা Docker host এ গিয়ে:

curl `http://localhost:3000`


🔹 Output:

🚀 Hello from Jenkins + Docker + Node.js!
##  What you learned:

- Pull a GitHub repo from a Jenkins pipeline

- Build a Node.js app using a Dockerfile

- Run/verify a container

- Clean up the environment with a cleanup stage