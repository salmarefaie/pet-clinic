# pet-clinic

## Description
- Install tomcat and its pre-requisites and configure tomcat to have access to its deployment manager using ansible.
- Install Nagios and Jenkins using ansible.
- Build the application https://github.com/spring-projects/spring-petclinic using shell scripting to generate a WAR file.
- Build and deployment to tomcat by using Jenkins pipeline.


## Tools
- Java
- Ansible
- Tomcat
- Jenkins


## How to run the project 
1. Install ansible
   
    ```bash      
     sudo apt update
     sudo apt install software-properties-common
     sudo add-apt-repository --yes --update ppa:ansible/ansible
     sudo apt install ansible
    ```

2. Clone the repo

    ```bash      
     git clone https://github.com/salmarefaie/pet-clinic.git
    ```

3. Run playbook to install packages

   ```bash
     cd pet-clinic      
     ansible-playbook playbook.yaml -K
    ```

4. Build and deploy the application using jenkins
   - Jenkins is running on http://localhost:8080
   - Create pet-clinic user to run pipeline by it
   - Create new item and choose pipeline
   - Copy the contents of jenkins file to configuration of pipeline
   - Run the pipeline
     
     ![Screenshot from 2024-05-07 13-46-29](https://github.com/salmarefaie/pet-clinic/assets/76884936/edb613a5-bd2c-4646-96a2-364b464ad45f)
     


       
       

    
