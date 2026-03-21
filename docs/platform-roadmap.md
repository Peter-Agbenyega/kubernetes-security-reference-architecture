# Platform Roadmap

## Near-Term Priorities

1. Harden the Terraform foundation
   - parameterize the root module cleanly
   - document inputs, outputs, and deployment assumptions
   - add formatting and validation checks for pull requests

2. Complete baseline EKS platform primitives
   - introduce node group strategy
   - document cluster access assumptions
   - add examples for environment-specific variable files without committing secrets

3. Begin Kubernetes platform layering
   - add a small set of Kubernetes manifests or Helm-based examples
   - separate platform services from example workloads
   - document how infrastructure outputs feed cluster operations

4. Add security and operational maturity
   - introduce policy guardrails only when implemented
   - add observability and logging components with clear scope
   - define a release and validation workflow for infrastructure changes

## Maturity Model

- Current: Terraform infrastructure foundation with modular AWS building blocks
- Next: repeatable EKS foundation with safer configuration patterns
- Later: secure Kubernetes platform repository with workload, policy, and operations layers
