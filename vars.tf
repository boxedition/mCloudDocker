data "template_file" "docker-install" {
  template = "${file("scripts/docker-install.tpl")}"
}

data "template_file" "install" {
  template = "${file("scripts/install.tpl")}"
}
