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

import {
    to = module.d1.cloudflare_d1_database.app
    id = "${var.account_id}/24ba1d35-c551-44f5-bf02-b2923cd90f15"
}
