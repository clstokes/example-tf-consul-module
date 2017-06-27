module "consul" {
  source = "consul-module"
}

provider "consul" {
  address = "${module.consul.consul_address}"
}

resource "consul_keys" "app" {
  key {
    path  = "tf-test"
    value = "adsfasdf8211h92adfasdf"
  }
}
