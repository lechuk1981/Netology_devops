
output "instance_first_vm" {
  value = "${var.vm_web_name}   ${yandex_compute_instance.platform.network_interface[0].nat_ip_address}"
}

output "instance_second_vm" {
  value = "${var.vm_db_name}    ${yandex_compute_instance.platform_db.network_interface[0].nat_ip_address}"
}

