credentials        = "./terraform-gkecluster-keyfile.json"
project_id         = "storied-visitor-349014"
region             = "europe-west1"
zones              = ["europe-west1-b", "europe-west1-c", "europe-west1-d"]
name               = "nord-k8s"
machine_type       = "n1-standard-1"
min_count          = 1
max_count          = 1
disk_size_gb       = 10
service_account    = "nord-k8s@storied-visitor-349014.iam.gserviceaccount.com"
initial_node_count = 1
