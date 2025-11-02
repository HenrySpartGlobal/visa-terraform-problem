# Terraform Debug Lab

Goal: Fix the provided Terraform so a clean `terraform apply` runs inside the container.

## Build

Build once:
```bash
docker build -t tf-debug-lab .
docker run --rm -it -v "$(pwd)":/work -w /work tf-debug-lab
```

Once inside the container, run the relevant terraform commands required so `terraform apply` succeeds

### Rules:
- Work only inside the container.
- Do not add internet services or cloud creds.
- You may edit any file.
- Explain what you changed and why.

### Deliverables:
- Commands you ran.
- Diffs or description of edits.
- Final successful terraform plan output.