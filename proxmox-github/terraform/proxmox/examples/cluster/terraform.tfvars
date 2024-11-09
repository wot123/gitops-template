virtual_environment_endpoint  = "https://10.0.1.50:8006"
virtual_environment_api_token = "tofu@pam!kubefirst=16cf2d5d-6c86-4d10-9c58-878a8aab1ec0"
virtual_environment_node_name = "pve-test-01"
cluster_name                  = "Kubefirst"
talos_version                 = "v1.8.1"
tags                          = ["kubefirst", "talos"]
image_store                   = "local"
data_store                    = "local-lvm"
controlplane = {
  ipv4_address = ["10.0.3.140/22"]
  resource = {
    cpu_cores = 1
    memory    = 2
    disk_size = 20
  }
}
dataplane = {
  ipv4_address = ["10.0.3.141/22"]
  resource = {
    cpu_cores = 1
    memory    = 2
    disk_size = 20
  }
}

ipv4 = {
  # method   = "static"
  # start_ip = "10.0.2.10"
  address = "10.0.3.140/22"
  gateway = "10.0.0.1"
}
dns = {
  domain       = "kubefirst.konstruct.home.arpa"
  name_servers = ["dns-01.konstruct.home.arpa", "dns-02.konstruct.home.arpa"]
}