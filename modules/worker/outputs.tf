output "worker_url" {
    value = data.cloudflare_worker.hello.subdomain.url
}
