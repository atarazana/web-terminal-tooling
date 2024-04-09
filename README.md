# Web Terminal Tooling

Default OpenShift Console Web Terminal tooling container. OCP 4.14.20

Includes tools that a Kubernetes and OpenShift developer would like find in their terminal:
- OC_VER = 4.14.20
- KUSTOMIZE_VER = 5.4.1
- HELM_VER = 3.12.1
- ODO_VER = v3.15.0
- TKN_VER = 1.14.3
- KN_VER = 1.9.2
- RHOAS_VERSION = 0.52.2
- SUBMARINER_VERSION = 0.17.0
- KUBEVIRT_VERSION = 1.2.0
- ARGOCD_VERSION = 2.8.14
- YQ_VERSION = 4.19.1

## Contributing

### How to build

There is [template.Dockerfile](https://github.com/redhat-developer/web-terminal-tooling/blob/master/build/template.Dockerfile) that is processed by build.sh script to apply needed changes before build. So, execute the following but before uncomment configuration params if needed.

```bash
# TOOL=podman # can be docker
# MODE=local # can be brew
# WEB_TERMINAL_TOOLING_IMG=web-terminal-tooling:local
./build.sh
```

### How to run

```bash
podman run -ti --rm web-terminal-tooling:local bash
```

Upstream and downstream are synced via this [job](https://codeready-workspaces-jenkins.rhev-ci-vms.eng.rdu2.redhat.com/job/web-terminal-sync-web-terminal-tooling/)
