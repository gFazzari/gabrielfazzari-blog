# 🌐 HugoBlox Website

Static website built with **Hugo** and **HugoBlox**, deployed on **Cloudflare Pages**.  
The infrastructure (Pages project, custom domain, DNS) is managed using **Terraform**.

---

## 🚀 Tech Stack

- **Hugo** – Static Site Generator
- **HugoBlox** – Hugo framework/theme
- **Cloudflare Pages** – Hosting platform
- **Cloudflare DNS**
- **Terraform** – Infrastructure as Code
- **GitHub** – Source control and CI

---

## 📁 Repository Structure

├── assets/ # static assets
├── content/ # blog and post 
├── data/ # author info
├── static/ # uploads
├── config/ # Hugo config
├── go.mod / go.sum # Hugo Modules (HugoBlox)
├── infra/ # Terraform
└── README.md


> The `public/` and `resources/` directories are **not versioned** because they are generated automatically by Hugo.

---

## 🧑‍💻 Local Development

### Prerequisites
- Hugo (compatible with HugoBlox)
- Go (required for Hugo Modules)

Run the local development server:

```bash
hugo server
```

The site will be available at:

```bash
http://localhost:1313
```

## Deployment

Production deployment is handled by Cloudflare Pages, connected directly to this repository.

Production branch: **main**

Build command:

```bash
pnpm install && hugo --gc --minify && pnpm dlx pagefind --source "public"
```

Output directory: **public**

Every push to main automatically triggers a new build and deployment.