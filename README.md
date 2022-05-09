# Demo Application

A javascript application is deployed on Kubernetes Cluster in GCP Cloud Provider. I am using Terraform to deploy the infrastructure.

https://github.com/komarserjio/notejam/tree/master/express

## Technology Stack:

1. GCP Provider
2. Manager Kubernetes Cluster - GKE
3. Terraform
4. Javascript

Note: The state file of the terraform is stored in GCP Bucket.

## Kubernetes Cluster Setup

| Key | Value  |
|---|---|
| Region: | europe-west1  |
| Number of Zones:  |  3 |
| Number of Worker Nodes:  | 3  |
| Autoscaling  | Yes  |


## Access the Applicationn

http://34.79.88.190:30361/signin

Best approach is to use a Ingress but for now, I have used type NodePort.

## Answers to questions asked:

* The Application must serve variable amount of traffic. Most users are active during business hours. During big
events and conferences the traffic could be 4 times more than typical.

#### GKE is cluster is running with 3 worker nodes and autoscaling is enabled. If the number of active users increases, cluster will autoscale itself.
_____________

* The Customer takes guarantee to preserve your notes up to 3 years and recover it if needed.

#### There is a option to make this application into smaller microservices. Once it's stateless, we can apply lifecycle policies for the data stored.
_____________

* The Customer ensures continuity in service in case of datacenter failures.

#### GKE cluster is deployed in 3 zones namely europe-west1-c, europe-west1-b and europe-west1-d.
_____________

* The Service must be capable of being migrated to any regions supported by the cloud provider in case of
emergency.

#### Application is deployed as an image so, it can be moved to any other infrastructure.

https://hub.docker.com/repository/docker/manurawat1/node
_____________

* The Customer is planning to have more than 100 developers to work in this project who want to roll out multiple
deployments a day without interruption / downtime.

#### Jenkins pipeline or Github Actions can be configured to perform the deployments. Their access can be controlled using RBAC and can be isolated with namespaces.
_____________

* The Customer wants to provision separated environments to support their development process for development,
testing, production in the near future.

#### A Github Actions pipeline can be setup manage these environments. As of now, I have deployed only the Production Environment.
_____________

* The Customer wants to see relevant metrics and logs from the infrastructure for quality assurance and security
purposes.

#### Prometheus can be installed for metrics and Grafana for graphical representation.

