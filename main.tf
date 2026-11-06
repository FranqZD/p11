module "d1" {
    source = "./modules/d1"
    account_id = var.account_id
    d1_database_name = var.d1_database_name
}

module "worker" {
    source = "./modules/worker"
    account_id = var.account_id
    worker_name = var.worker_name
    d1_database_id = module.d1.database_id
}

moved {
    from = cloudflare_d1_database.app
    to = module.d1.cloudflare_d1_database.app
}

moved {
    from = cloudflare_workers_script.hello
    to = module.worker.cloudflare_workers_script.hello
}

moved {
    from = cloudflare_workers_script_subdomain.hello
    to = module.worker.cloudflare_workers_script_subdomain.hello
}
