resource "local_file" "ansible_prod_hosts" {
  content = templatefile("${path.module}/prod.tftpl",
    {
      k8s = yandex_compute_instance.k8s.*,
    }
  )

  filename = "${path.module}./playbook/inventory/prod.yml"
}
