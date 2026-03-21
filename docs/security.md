# Security

ClusterShield360 is currently positioned as a secure infrastructure foundation, not as a completed Kubernetes security platform.

## Current Security Posture

- baseline AWS IAM and network-oriented Terraform resources are present
- infrastructure concerns are separated into modules for clearer review and change control
- Terraform state and local variable files are now excluded from source control for safer repository hygiene
- Kubernetes example manifests now demonstrate a first-pass namespace baseline, least-privilege RBAC, secret consumption, and network segmentation pattern

## What Is Not Yet Implemented

The repository does not yet contain:

- admission control or policy-as-code
- runtime detection or workload security tooling
- compliance automation or hardening benchmarks

## Security Baseline Examples

The repository now includes minimal example manifests that make the security direction more concrete:

- [k8s/namespaces/regulated-services.yaml](../k8s/namespaces/regulated-services.yaml) defines a regulated-services namespace with baseline labels appropriate for controlled workloads
- [k8s/security/workload-reader-rbac.yaml](../k8s/security/workload-reader-rbac.yaml) shows a namespace-scoped service account, role, and rolebinding
- [k8s/secrets/patient-api-config.example.yaml](../k8s/secrets/patient-api-config.example.yaml) shows a placeholder Secret manifest for local adaptation without committing real secret values
- [k8s/deployments/patient-api.yaml](../k8s/deployments/patient-api.yaml) shows a workload using a conservative `securityContext` and `secretKeyRef`
- [k8s/network-policies/regulated-services-baseline.yaml](../k8s/network-policies/regulated-services-baseline.yaml) demonstrates a default-deny posture with scoped ingress and DNS egress

These examples are intentionally small. They demonstrate secure Kubernetes patterns without claiming that a full enforcement, policy, or operations stack already exists.

## Security Direction

Security maturity should grow in layers:

1. keep the infrastructure baseline reviewable and parameterized
2. adapt the current example manifests into tested environment-specific assets
3. add policy and operational controls when they can be validated, not just described

This keeps the repo credible for reviewers while showing a concrete path toward secure platform delivery for public-facing and regulated services.
