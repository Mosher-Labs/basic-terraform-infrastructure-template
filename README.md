# basic-repo-template

![GitHub branch status](https://img.shields.io/github/checks-status/mosher-labs/basic-repo-template/main)
![GitHub Issues](https://img.shields.io/github/issues/mosher-labs/basic-repo-template)
![GitHub last commit](https://img.shields.io/github/last-commit/mosher-labs/basic-repo-template)
![GitHub repo size](https://img.shields.io/github/repo-size/mosher-labs/basic-repo-template)
![Libraries.io dependency status for GitHub repo](https://img.shields.io/librariesio/github/mosher-labs/basic-repo-template)
![GitHub License](https://img.shields.io/github/license/mosher-labs/basic-repo-template)
![GitHub Sponsors](https://img.shields.io/github/sponsors/mosher-labs)

## Introduction

🚀 This repository serves as a basic template for creating new
repositories. It's designed to be a foundation for structure and
organization. 🎯

### 🌍 Key Features

- 📦 A clean, reusable structure for quick repo setup.
- 🗣️ Language-specific templates can inherit and extend from this base.
- 🔄 Easily customizable for various projects and use cases.

### ✨ Perfect for

- Developers looking for a clean start 🛠️
- Language-specific templates 👨‍💻
- Seamless repository setup for quick deployments ⚡

Feel free to fork, extend, and contribute! 🤝

## Usage

To use this repository template, simply fork the repo.

```bash
gh repo fork --fork-name <FORK_NAME> --org <ORG_NAME>
```

Update the templated information:

### README.md

- [ ] Replace `basic-repo-template` with your `<FORK_NAME>`
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
