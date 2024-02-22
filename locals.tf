locals {
    local_files = fileset("./spec/", "**/*.yaml")

    collector_files_content = flatten([
        for file in local.local_files : {
            "${yamldecode(file("${path.module}/spec/${file}")).name}" = yamldecode(file("${path.module}/spec/${file}"))
        }
    ])

    collector_files_content_map = { for item in local.collector_files_content :
      keys(item)[0] => values(item)[0]
    }
}
