output "kube_config" {
  value     = azurerm_kubernetes_cluster.eliteclusterdemo.kube_config_raw
  sensitive = true
}
