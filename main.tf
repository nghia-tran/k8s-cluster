provider "openstack" {
}

# Create master node 
resource "openstack_compute_instance_v2" "k8s-master" {
  name      = "k8s-master"
  region    = "$var.region"
  image_id  = "$var.image_id"
  flavor_id = "$var.flavor_id"
  key_pair  = "$var.key_pair"

  network {
    uuid = "$var.pubic_net_id"
    name = "public"
  }

  network {
    uuid = "var.private_net_id"
    name = "private"
  } 
}

