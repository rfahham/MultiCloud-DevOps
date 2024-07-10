output "instance_public_ips_prometheus" {
  value = aws_instance.prometheus.*.public_ip
}

output "instance_public_ips_grafana" {
  value = aws_instance.grafana.*.public_ip
}

