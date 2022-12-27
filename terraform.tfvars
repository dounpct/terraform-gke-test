project_id      = "project-test"
region          = "asia-southeast1"
zone            = "asia-southeast1-a"
cluster_name    = "terraform-cluster-01"

vpc_name    = "project-test-terraform-cluster-01-vpc"
vpc_subnet_name = "project-test-terraform-cluster-01-subnet"
vpc_subnet_range = "10.10.0.0/24"

machine_type = "n1-standard-2"
gke_num_nodes = 3