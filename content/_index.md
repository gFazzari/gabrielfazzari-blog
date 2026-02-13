---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2026-01-05
type: landing

design:
  # Default section spacing
  spacing: '0'

sections:
  # Developer Hero - Gradient background with name, role, social, and CTAs
  - block: dev-hero
    id: hero
    content:
      username: me
      greeting: "Hi, I'm"
      show_status: true
      show_scroll_indicator: true
      typewriter:
        enable: true
        prefix: "I build"
        strings:
          - "scalable Kubernetes infrastructures"
          - "cloud-native platforms with security by design"
          - "foundations built on automation and infrastructure as code"
        type_speed: 70
        delete_speed: 40
        pause_time: 2500
      cta_buttons:
        - text: Get In Touch
          url: "#contact"
          icon: envelope
    design:
      style: centered
      avatar_shape: circle
      animations: true
      background:
        color:
          light: "#fafafa"
          dark: "#0a0a0f"
      spacing:
        padding: ["6rem", "0", "4rem", "0"]
    
  # Visual Tech Stack - Icons organized by category
  - block: tech-stack
    id: skills
    content:
      title: "Tech Stack"
      subtitle: "Technologies I use to build things"
      categories:
        - name: DevOps
          items:
            - name: Kubernetes
              icon: devicon/kubernetes
            - name: Rancher
              icon: devicon/rancher
            - name: Docker
              icon: devicon/docker
            - name: Ansible
              icon: devicon/ansible
            - name: Terraform
              icon: devicon/terraform
            - name: Prometheus
              icon: devicon/prometheus
            - name: Grafana
              icon: devicon/grafana
        - name: Languages
          items:
            - name: Python
              icon: devicon/python
            - name: Go
              icon: devicon/go
            - name: C
              icon: devicon/c
        - name: CI/CD
          items:
            - name: ArgoCD
              icon: devicon/argocd
            - name: Fleet
              icon: custom/fleet
            - name: Gitlab
              icon: devicon/gitlab
            - name: Github
              icon: devicon/github
        - name: Cybersecurity
          items:
            - name: Splunk
              icon: custom/splunk
            - name: Crowdstrike
              icon: custom/crowdstrike1
            - name: Cloudflare
              icon: devicon/cloudflare
            - name: Sonarqube
              icon: devicon/sonarqube
            - name: Trivy
              icon: custom/trivy
    design:
      style: grid
      show_levels: false
      background:
        color:
          light: "#f5f5f5"
          dark: "#08080c"
      spacing:
        padding: ["4rem", "0", "4rem", "0"]
  
  # Experience Timeline
  - block: resume-experience
    id: experience
    content:
      title: Experience
      date_format: Jan 2006
    design:
      columns: '1'
      background:
        color:
          light: "#ffffff"
          dark: "#0d0d12"
      spacing:
        padding: ["4rem", "0", "4rem", "0"]
  
  # Recent Blog Posts
  - block: collection
    id: blog
    content:
      title: Recent Posts
      subtitle: 'Thoughts on web development, tech, and more'
      text: ''
      filters:
        folders:
          - blog
        exclude_featured: false
      count: 1
      order: desc
    design:
      view: card
      columns: 3
      background:
        color:
          light: "#f5f5f5"
          dark: "#08080c"
      spacing:
        padding: ["4rem", "0", "4rem", "0"]
  
  # Contact Section
  - block: contact-info
    id: contact
    content:
      title: Get In Touch
      subtitle: "Let's build something amazing together"
      text: |-
        I'm always interested in hearing about new projects and opportunities.  
        Whether you're looking to hire, collaborate, or just want to say hi, feel free to reach out!
      email: gabrielfazzari1999@gmail.com
      autolink: true
    design:
      columns: '1'
      background:
        color:
          light: "#ffffff"
          dark: "#0d0d12"
      spacing:
        padding: ["4rem", "0", "4rem", "0"]
  
  # CTA Card
  - block: cta-card
    content:
      title: "Open to Opportunities"
      text: |-
        I'm currently looking for **platform engineering** or **cybersecurity architect** roles.
        
        Let's connect and discuss how I can help your team.
      # button:
      #   text: 'Download Resume'
      #   url: uploads/resume.pdf
      #   new_tab: true
    design:
      card:
        # Light mode: soft pastel theme gradient | Dark mode: rich deep gradient
        css_class: 'bg-gradient-to-br from-primary-200 via-primary-100 to-secondary-200 dark:from-primary-600 dark:via-primary-700 dark:to-secondary-700'
        text_color: dark
      background:
        color:
          light: "#f5f5f5"
          dark: "#08080c"
      spacing:
        padding: ["4rem", "0", "6rem", "0"]
---
