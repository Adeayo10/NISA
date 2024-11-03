Here is the diagram of the deployed resources. The diagram shows the VPC, Subnet, EC2 instance, Internet Gateway, and Security Group.

```
+------------------------------------------------+
|                    AWS VPC                     |
|                                                |
|  +----------------------+                      |
|  |      Subnet          |                      |
|  |                      |                      |
|  |  +----------------+  |                      |
|  |  |   EC2 Instance |  |                      |
|  |  |                |  |                      |
|  |  |  +----------+  |  |                      |
|  |  |  | Docker    |  |  |                      |
|  |  |  | Container |  |  |                      |
|  |  |  +----------+  |  |                      |
|  |  +----------------+  |                      |
|  +----------------------+                      |
|                                                |
|  +----------------------+                      |
|  |   Internet Gateway   |                      |
|  +----------------------+                      |
|                                                |
|  +----------------------+                      |
|  |   Security Group     |                      |
|  |  +----------------+  |                      |
|  |  | Ingress Rules  |  |                      |
|  |  |                |  |                      |
|  |  |  - HTTP (80)   |  |                      |
|  |  |  - SSH (22)    |  |                      |
|  |  |  - HTTPS (443) |  |                      |
|  |  +----------------+  |                      |
|  +----------------------+                      |
+------------------------------------------------+
```

**Explanation:**

**AWS VPC:** The virtual private cloud that contains all the resources.

**Subnet:** A subnet within the VPC where the EC2 instance is deployed.

**EC2 Instance:** The virtual machine running in the subnet.

**Internet Gateway:** Allows the EC2 instance to connect to the internet.

**Security Group:**
Controls the inbound and outbound traffic to the EC2 instance, allowing HTTP (port 80), SSH (port 22), and HTTPS (port 443) traffic.

This diagram provides a high-level overview of the infrastructure components and their relationships.

![Diagram of deployed resources](./images/53-image-0.webp)
image source: SOURAV KUNDU (2021). Available at: https://skundunotes.com/wp-content/uploads/2021/11/53-image-0.png?w=656&h=300&crop=1 (Accessed: 7 March 2023).

References:
- HashiCorp (no date) Build Infrastructure | Terraform - HashiCorp Learn. Available at: https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started (Accessed: 7 March 2023).
- Kundu, S. (2023) CI/CD with Terraform and GitHub Actions to Deploy to AWS. Available at: https://skundunotes.com/2023/03/07/ci-cd-with-terraform-and-github-actions-to-deploy-to-aws/ (Accessed: 7 March 2023).
