# Terraform files for Tunesort Archtecture
# Author: Isaiah William
# Personal Project
/*_____________________________*/

data "docker_registry_image" "ubuntu" {
  name = "ubuntu:precise"
}

resource "docker_image" "ubuntu-img" {
  name          = data.docker_registry_image.ubuntu.name
  build {
    context = "${path.module}/docker"
  }
  triggers = {
    dir_sha1 = sha1(join("", [for f in fileset(path.module, "src/*") : filesha1(f)]))
  }
  dockerfile = "${path.module}/docker"
}
