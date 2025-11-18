# Mosher Labs Basic Terraform Infrastructure Template - Project Memory

This file contains persistent context for Claude Code sessions on this project.
It will be automatically loaded at the start of every session.

## Project Overview

This is a template repository for creating new Terraform infrastructure projects.
It provides a standardized starting point with pre-configured tooling, workflows,
and Terraform best practices including Terraform Cloud integration.

**Key Details:**

- **Purpose:** Template for Terraform IaC projects
- **CI/CD:** GitHub Actions with terraform plan/apply workflow
- **Backend:** Terraform Cloud (remote state)
- **Linting:** tflint, yamllint, pre-commit hooks
- **Pattern:** Fork or use as template, then customize

## Repository Structure

```text
basic-terraform-infrastructure-template/
├── .github/workflows/     # CI/CD workflows
│   ├── release.yml        # Semantic versioning & releases
│   └── terraform.yml      # Terraform plan/apply (if added)
├── modules/               # Terraform modules (customize)
├── main.tf                # Main Terraform configuration
├── variables.tf           # Input variables
├── outputs.tf             # Output values
├── terraform.tf           # Terraform and provider configuration
├── .pre-commit-config.yaml
├── .tflint.hcl            # Terraform linting configuration
├── README.md
└── CLAUDE.md
```

## Using This Template

### Creating a New Terraform Project

1. **Use as template:** Click "Use this template" on GitHub
1. **Clone locally:** `git clone <your-new-repo>`
1. **Update README.md:** Replace template content with project description
1. **Configure Terraform Cloud:** Update `terraform.tf` with your workspace
1. **Customize modules:** Add your infrastructure code
1. **Install pre-commit:** `pre-commit install`
1. **Create project CLAUDE.md:** Document infrastructure-specific context

### Pre-configured Features

- **Release workflow:** Automatic semantic versioning
- **Terraform workflow:** Plan on PR, apply on main (when enabled)
- **Pre-commit hooks:** terraform fmt, tflint, yamllint, markdown
- **Terraform Cloud:** Remote state and execution

## Terraform Best Practices

### Code Organization

- Use modules for reusable components
- Keep `main.tf` focused on composition
- Define variables with descriptions and types
- Output important values for other stacks
- Use consistent naming conventions

### Testing Locally

```bash
# Format code
terraform fmt -recursive

# Validate configuration
terraform validate

# Plan changes
terraform plan

# Apply changes (with approval)
terraform apply
```

## Git Workflow

1. **Create feature branch:** `git checkout -b feature/description`
1. **Make changes** to Terraform code or documentation
1. **ALWAYS run pre-commit BEFORE committing:** `pre-commit run --all-files`
   - Fix ALL errors (especially terraform fmt, tflint, and markdown)
   - Do NOT commit with `--no-verify` unless absolutely necessary
1. **Commit with conventional format:** `git commit -m "type: description"`
1. **Push and create PR:** `gh pr create --title "feat: description"`
1. **Review Terraform plan:** Check plan output in PR comment
1. **Test changes:** If your changes reference shared workflows that were also updated,
   temporarily change the reference from `@main` to `@your-branch` to test, verify
   the PR passes, then change back to `@main` before merging
1. **Merge to main:** Terraform apply runs automatically (if enabled)

**Commit Format:** Conventional Commits (enforced by pre-commit hook)

- `feat:` - New infrastructure feature
- `fix:` - Infrastructure fix
- `docs:` - Documentation changes
- `chore:` - Maintenance
- `refactor:` - Code refactoring
- `test:` - Temporary test changes (like branch references)

## Pre-commit Hooks

**Installed hooks:**

- terraform fmt (code formatting)
- terraform validate (configuration validation)
- tflint (linting and best practices)
- YAML linting (yamllint)
- Markdown linting (markdownlint)
- Conventional commit format
- File hygiene (trailing whitespace, EOF, etc.)

**Setup:**

```bash
pre-commit install              # One-time setup
pre-commit run --all-files      # Run manually
pre-commit autoupdate           # Update hook versions
```

## Important Notes

### Code Quality Standards

**CRITICAL:** All code must adhere to linter rules from the start. Do NOT write
code that needs fixing after running pre-commit hooks.

**Markdown (markdownlint):**

Configuration: `.markdownlint.yaml` (allows 2-space indent, 120 char lines)

- Nested lists under unordered items: Use 2-space indentation
- Nested lists under ordered items: Use 2-space indentation
- Inline format for simple nested items: `**Item:** Detail 1, Detail 2`
- Line length: 120 characters max (code/tables excluded)
- Bare URLs: Allowed in reference sections
- Bold for emphasis: Allowed in lists

**YAML (yamllint):**

- Maximum line length: 80 characters
- Use 2-space indentation
- No trailing whitespace
- Proper quoting for strings containing special characters

**Terraform (terraform fmt, tflint):**

- Use consistent formatting (run `terraform fmt`)
- Add descriptions and types to all variables
- Use proper resource naming (snake_case)
- Avoid hardcoded values (use variables)
- Tag all resources with standard tags
- Document outputs with descriptions

### When Working on This Repo

1. **Write linter-compliant code from the start** - Don't fix after the fact
1. **Test locally** with `terraform plan` before committing
1. **Run pre-commit hooks** BEFORE committing (fix all errors!)
1. **Review plan output** in PRs before merging
1. **Use modules** for reusable infrastructure
1. **Document variables** with descriptions and types
1. **Test shared workflow changes** - Use branch references before merging

### Terraform Cloud

- **State:** Stored remotely in Terraform Cloud
- **Execution:** Can run locally or remotely
- **Variables:** Set in Terraform Cloud workspace
- **Secrets:** Never commit to Git, use TF Cloud variables

## References

- @README.md - Repository overview
- Shared Workflows: <https://github.com/Mosher-Labs/.github>
- Terraform Docs: <https://www.terraform.io/docs>
- Terraform Cloud: <https://app.terraform.io>

---

**Last Updated:** 2025-11-18

This file should be updated whenever:

- Project patterns change
- Important Terraform context is discovered
- Modules are added or modified
- Workspace configuration changes
