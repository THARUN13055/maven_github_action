# Springboot_Github_action

***
```bash
```
## Used Tools

- Azure for create vm's
- Java
- Maven-springboot
- Sonarqube
- Github-action
- Nexus
- Docker
- trivy
- Terraform
- Kubernetes using Helm
- Slack Notification

## Java implementation

- This is a simple **java springboot application**

-  This is for installing the java Use this method

1. Copy and past in Terminal which will be download the pacman.py file to install needed package

```bash
wget https://raw.githubusercontent.com/THARUN13055/quick_install_linux/main/pacman.py
```
2. List the python file what are all we need to install
```bash
python3 pacman.py list
```
3. And then selected the listed file and give the name in code (ex: maven)
```bash
python3 pacman.py install maven 
```

- Now run the source code

```bash
mvn test
```
```bash
mvn verify -DskipUnitTests
```
```bash
mvn clean compile
```
```bash
mvn clean package
```
- This all are the which will test , verify , compile and package.Finally it will execute the `target/springboot-app.jar` file

## Docker image

- Here we use Multiple build docker image

- To install Docker 

```bash
wget https://raw.githubusercontent.com/THARUN13055/quick_install_linux/main/pacman.py
```
```bash
python3 pacman.py install docker 
```
- And to Create the Docker image Manually
```bash
sudo docker build -t username/springboot-app:tagname
```
- To run the docker container sample
```bash
sudo docker run -it --name springboot -d -p 8080:8080 springboot-app:tagname bash
```

## Github_action

In this Github action we use some of the actions. And here we use **composite**  which is use to make code efficient.In this github action we use some actions...
1. maven-jar
2. owasp
3. sonarqube
4. docker
5. nexus
6. terraform
7. kubernetes
8. stack-notification

- this are the action which are we used here
