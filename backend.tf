# Executar o terraform login para gerar as configurações e pegar o token
terraform {
  cloud {
    organization = "allanbellan"

    workspaces {
      name = "StateFile-ProjetoDescomplicandoTerraform"
    }
  }
}
