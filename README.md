# Cloud Native Days Web

The website for [Cloud Native Days](https://cloudnativedays.org/) — a global series of community-run events focused on cloud-native technologies and practices.

Built with [Hugo](https://gohugo.io/) and the [Blowfish](https://blowfish.page/) theme, deployed on [Netlify](https://www.netlify.com/).

## Prerequisites

- [Hugo](https://gohugo.io/installation/) v0.141.0+ (extended edition)

## Getting Started

```sh
# Clone the repository (with theme submodule)
git clone --recurse-submodules git@github.com:rothgar/cloud-native-days-web.git
cd cloud-native-days-web

# Start the local dev server
make serve
```

The site will be available at http://localhost:1313/.

## Available Commands

| Command | Description |
|---|---|
| `make serve` | Start the Hugo dev server with live reload and drafts |
| `make build` | Build the site for production into `public/` |
| `make clean` | Remove the generated `public/` and `resources/` directories |

## Adding an Event

Create a new event directory under `content/events/`:

```sh
mkdir content/events/Your-City
```

Add an `index.md` with frontmatter:

```markdown
---
title: "Cloud Native Days Your City"
date: 2026-06-15
externalUrl: "https://your-city.cloudnativedays.org"
summary: "A brief description of the event."
showReadingTime: false
---
```

Include a `featured.png` image (recommended 1200x630px) in the same directory.

## Local Development with Devcontainers

This project includes a `.devcontainer` configuration for Visual Studio Code, which automates the setup of the development environment.

1. **Install Visual Studio Code** and the **Dev Containers** extension.
2. **Open the project** in VS Code.
3. Click **Reopen in Container** when prompted, or run the command from the Command Palette (`F1` > `Dev Containers: Reopen in Container`).

## Deployment

Pushes to `main` are automatically deployed to Netlify. The Blowfish theme is included as a git submodule and checked out during the build.

To update the theme:

```sh
cd themes/blowfish
git fetch && git checkout <new-version-tag>
cd ../..
git add themes/blowfish
git commit -m "Update blowfish theme to <new-version-tag>"
```

## License

See the repository for license details.
