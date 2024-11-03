# Ansible Playbook for Server Configuration

## Objectives
Automate the configuration of the server to install Docker and ensure it is configured to start on boot.

## Prerequisites
- Ansible installed on your local machine
- SSH access to the target server

## Files
- `playbook.yml`: Ansible playbook containing tasks to configure the server
- `inventory`: Inventory file specifying the target server

## Usage
1. Update the `inventory` file with the IP address and SSH user of your target server.
2. Run the playbook using the following command:
   ```sh
   ansible-playbook -i inventory playbook.yml


### Steps to Follow

1. **Create the Ansible Playbook and Inventory File:**
   - Save the `playbook.yml` and `inventory` files in your project directory.

2. **Update the Inventory File:**
   - Replace `your_server_ip` with the IP address of your target server.
   - Replace `your_ssh_user` with the SSH user for your target server.

3. **Run the Ansible Playbook:**
   - Execute the following command to run the playbook:
     ```sh
     ansible-playbook -i inventory playbook.yml
     ```

This setup will automate the configuration of the server, ensuring Docker is installed and configured to start on boot.


# Ansible Playbook for Server Configuration and Docker Deployment

## Objectives
Automate the configuration of the server and deploy a Docker container running a sample application.

## Files
- `playbook.yml`: Ansible playbook containing tasks to configure the server and deploy the Docker container
- `inventory`: Inventory file specifying the target server
- `Dockerfile`: Dockerfile to containerize the sample application
- `sample-app/`: Directory containing the sample application files

## Usage
1. Update the `inventory` file with the IP address and SSH user of your target server.
2. Run the playbook using the following command:
   ```sh
   ansible-playbook -i inventory playbook.yml

   
### Steps to Follow

1. **Create the Ansible Playbook and Inventory File:**
   - Save the `playbook.yml` and [`inventory`]files in your project directory.

2. **Create the Sample Application:**
   - Create the `Dockerfile`, `app.js`, and `package.json` files in a directory named `sample-app`.

3. **Update the Inventory File:**
   - Replace [`your_server_ip`] with the IP address of your target server.
   - Replace [`your_ssh_user`] with the SSH user for your target server.

4. **Run the Ansible Playbook:**
   - Execute the following command to run the playbook:
     ```sh
     ansible-playbook -i inventory playbook.yml
      To check if the docker image is running, you can run the following command:
       ```sh   
         docker ps
     ```

This setup will automate the configuration of the server, ensuring Docker is installed and configured to start on boot, and deploy a Docker container running the sample application.