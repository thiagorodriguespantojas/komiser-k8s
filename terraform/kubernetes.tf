resource "helm_release" "komiser" {
  name       = "komiser"
  repository = "https://charts.komiser.io"
  chart      = "komiser"
  namespace  = "komiser"

  values = [file("values.yaml")]
}
