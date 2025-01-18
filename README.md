# basic-terraform-infrastructure-template

![GitHub branch status](https://img.shields.io/github/checks-status/mosher-labs/basic-terraform-infrastructure-template/main)
![GitHub Issues](https://img.shields.io/github/issues/mosher-labs/basic-terraform-infrastructure-template)
![GitHub last commit](https://img.shields.io/github/last-commit/mosher-labs/basic-terraform-infrastructure-template)
![GitHub repo size](https://img.shields.io/github/repo-size/mosher-labs/basic-terraform-infrastructure-template)
![Libraries.io dependency status for GitHub repo](https://img.shields.io/librariesio/github/mosher-labs/basic-terraform-infrastructure-template)
![GitHub License](https://img.shields.io/github/license/mosher-labs/basic-terraform-infrastructure-template)
![GitHub Sponsors](https://img.shields.io/github/sponsors/mosher-labs)

## 🌍 Basic Terraform Infrastructure Template 🛠️

Welcome to the Basic Terraform Infrastructure Template
repository! 🚀 This repo provides a foundational template for
creating Terraform configurations that instantiate and manage
infrastructure using reusable modules. 🎯

### 🌟 Key Features

- 📂 Pre-organized structure for defining environments and
  instantiating Terraform modules.
- 🛠️ Includes examples for integrating modules, variables, and
  outputs.
- 🔧 Follows Terraform best practices for scalability and
  maintainability.
- 🌐 Compatible with various cloud providers and modular setups.

### ✨ Perfect for

- Teams and individuals setting up new infrastructure projects quickly ⚙️
- Learning Terraform through a practical, modular approach 📚
- Standardizing infrastructure deployments with reusable templates 🚀

Start building your infrastructure with ease and confidence! 🤝

## Usage

To use this repository template, simply fork the repo.

```bash
gh repo fork --fork-name <FORK_NAME> --org <ORG_NAME>
```

Update the repository settings:

```bash
gh repo edit --add-topic devops,reliability-engineering,axes \
--add-topic infrastructure-as-code,viking,mosher-labs \
--delete-branch-on-merge --enable-discussions=false \
--enable-issues=false --enable-merge-commit=false \
--enable-projects=false --enable-rebase-merge=false \
--enable-wiki=false --add-topic terraform
```

Create a ruleset for the default branch.

- Ruleset Name: Default branch
- Enforcement status: Active
- Target Branches: Default
- ✅ Restrict deletions
- ✅ Require linear history
- ✅ Require signed commits
- ✅ Require a pull request before merging
- ✅ Dismiss stale pull request approvals when new commits are pushed
- ✅ Require conversation resolution before merging
- ✅ Request pull request review from Copilot
- Allowed merge methods: "Squash"
- ✅ Require status checks to pass
- ✅ Require branches to be up to date before merging
- ✅ Do not require status checks on creation
- Status checks that are required: `pre-commit/pre-commit`
- ✅ Block force pushes
- ✅ Require code scanning results

Enable Dependabot.

- In Github UI, navigate to the repositories Settings > Code security
- Enable Dependabot security updates
- Enable Grouped security updates
- Enable Dependabot version updates
- Enable Dependabot on Actions runners
- CodeQL analysis > Set up > Default
- Enable Secret scanning
- Enable Push protection

Update the templated information:

### README.md

- [ ] Replace `basic-terraform-infrastructure-template` with your `<FORK_NAME>`
- [ ] Update the "Introduction" section
- [ ] Update the "Usage" section
- [ ] Update the "Contributing" section

## 🔰 Contributing

Upon first clone, install the pre-commit hooks.

```bash
pre-commit install
```

To run pre-commit hooks locally, without a git commit.

```bash
pre-commit run -a --all-files
```

To update pre-commit hooks, this ideally should be ran before a pull request is merged.

```bash
pre-commit autoupdate
```

## 📄 Documentation

<!-- markdownlint-disable MD013 -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | 1.10.4 |
| null | ~> 3 |
| random | ~> 3 |

## Providers

| Name | Version |
|------|---------|
| null | 3.2.3 |
| random | 3.6.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.this](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [random_string.random](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| config | The config for creating this infrastructure. | ```object({ name = string })``` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| name | The name created and used. |
<!-- END_TF_DOCS -->
