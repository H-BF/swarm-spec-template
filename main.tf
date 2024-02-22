module "charlotte" {
    source = "git::https://github.com/H-BF/swarm-modules//modules/charlotte?ref=v1.3.0"
    sgroups_var = local.collector_files_content_map
}
