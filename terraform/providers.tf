terraform{
    required_providers {
      azure = {
        source = "hashicorp/azurerm"
        version = "3.0.0"
      }
      docker = {
        source = "kreuzwerker/docker"
        version = "3.0.2"
      }
    }
}

provider "azure" {
    features {
      
    }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine" 
}
