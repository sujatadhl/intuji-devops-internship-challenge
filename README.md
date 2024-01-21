# intuji-devops-internship-challenge

## 1. Install docker. (Hint: please use VMs for this.) Write a bash script for installing Docker on a Linux machine.
I saved the bash script in [installdocker.sh](installdocker.sh) and executed it to install docker on ubuntu.

## 2. Clone the GitHub repository (https://github.com/silarhi/php-hello-world.git).
I cloned given repository using git clone https://github.com/silarhi/php-hello-world.git command.

### 2.1 Create your Dockerfile for building a docker image of the above application. Your docker image should run any web application (nginx,apache, httpd).
I created a [Dockerfile](Dockerfile). It uses the latest version of the official Nginx web server.
I copied the contents of my directory to the /usr/share/nginx/html directory inside the Docker image. This is the default root directory for the Nginx web server where it serves static content.

### 2.2 Push your docker image to the docker hub.
I made Docker Hub account and logged in using 'docker login'.
I build a docker image using my docker-hub-username/docker-image name.
docker build -t dahalsujata52897/php-hello-world- .

Then i pushed this image to dockerhub using push command.
docker push dahalsujata52897/php-hello-world

![image](https://github.com/sujatadhl/intuji-devops-internship-challenge/assets/154523112/a18e0c8b-739e-483d-a454-d00cf6451b00)


## 3. Create a docker-compose file for an application.
I created a [docker-composse.yml](docker-composse.yml).

   
## 4. Install Jenkins. Install necessary plugins. Create a freestyle project for building a CI/CD pipeline for the above application which will build artifacts using a docker file directly from your GitHub repo.
I installed jenkins following the official Jenkins installation fron the website. Then accessed jenkins from web browser through 'http://localhost:8080'.
I then installed all recommended plugins.
#### Creating a freestyle project:
   - In the Jenkins dashboard, i Clicked on "new item" to create freestyle project.
   - I set the name for project as php-hello-world.
   - I choose freestyle project as project type and clicked on OK.
     ![image](https://github.com/sujatadhl/intuji-devops-internship-challenge/assets/154523112/2960f6ad-a64c-4f39-9eff-8bc5affbbb8b)

I then configured the following in the project settings:
Source Code Management: Git (entered my repository)
![image](https://github.com/sujatadhl/intuji-devops-internship-challenge/assets/154523112/7fd0ba94-33f3-4e0c-896d-f3aaab8f170f)

Build: Execute shell (Command: docker build -t dahalsujata52897/php-hello-world .)
![image](https://github.com/sujatadhl/intuji-devops-internship-challenge/assets/154523112/74c6457e-5a35-4daa-b308-4524809ec06d)

This sets up CI/CD pipeline in Jenkins.

Finally i clicked on 'Build Now' to manually trigger the build initially.
![image](https://github.com/sujatadhl/intuji-devops-internship-challenge/assets/154523112/9f9eb10d-77b2-4b8f-928e-40fa5a4a179b)

