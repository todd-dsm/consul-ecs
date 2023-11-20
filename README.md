# consul-ecs
Terraform requires a stable backend.

## Overview
Begin with [core-infra] and branch out to ECS from there.


## Getting Started
Check the docs for [one-time setup steps].

Source-in the project variables to your environment:

`source build.env <stage|prod>`

```sh
make init
make plan
make apply
```

Or, just `make all`

### Observations

* This `aws-blueprint` appears to have no dependencies on variables; the plan seems to take the name of the directory where the terraform files live; E.G. `ecs_cluster_name = "consul-ecs"` in this case.

## Destroy it all
```sh
make clean
```

[core-infra]:https://github.com/aws-ia/ecs-blueprints/tree/main/terraform/fargate-examples/core-infra
[one-time setup steps]:https://gist.github.com/todd-dsm/d5b386a4891627921e14437851c26f68
