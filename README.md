# 🚌 SSBS — Smart School Bus System

> **ft_transcendence project** — A full-stack web application for smart school bus management.

![Project Status](https://img.shields.io/badge/status-in%20development-yellow)
![42 School](https://img.shields.io/badge/42-ft__transcendence-blue)

---

## 📋 Table of Contents

- [About](#-about)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Branch Strategy](#-branch-strategy)
- [Contributing](#-contributing)
- [Team](#-team)

---

## 🎯 About

**SSBS (Smart School Bus System)** is a web application designed to manage and track school bus operations efficiently. This project is part of the 42 school curriculum (ft_transcendence).

### Features
- [ ] User authentication & authorization
- [ ] Real-time bus tracking
- [ ] Route management
- [ ] Parent/Student notifications
- [ ] Admin dashboard
- [ ] Driver interface

---

## 🛠 Tech Stack

| Layer | Technology |
|-------|------------|
| **Frontend** | *TBD (React/Vue/Vanilla JS)* |
| **Backend** | *TBD (Django/NestJS/Node.js)* |
| **Database** | PostgreSQL |
| **Cache** | Redis |
| **Containerization** | Docker & Docker Compose |
| **CI/CD** | GitHub Actions |

---

## 📁 Project Structure

```
SSBS_FT_/
├── frontend/               # Frontend application
│   ├── src/               # Source files
│   ├── public/            # Static assets
│   └── package.json       # Frontend dependencies
│
├── backend/                # Backend application
│   ├── src/               # Source files
│   ├── tests/             # Unit & integration tests
│   └── requirements.txt   # Backend dependencies (if Python)
│
├── shared/                 # Shared utilities, types, API contracts
│
├── docs/                   # Documentation
│
├── docker-compose.yml      # Docker orchestration
├── .env.example           # Environment variables template
├── .gitignore             # Git ignore rules
├── CONTRIBUTING.md        # Contribution guidelines
└── README.md              # This file
```

---

## 🚀 Getting Started

### Prerequisites

- **Docker** & **Docker Compose** installed
- **Git** configured
- **Make** (optional, for Makefile commands)

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/YOUR_USERNAME/SSBS_FT_.git
cd SSBS_FT_

# 2. Copy environment variables
cp .env.example .env

# 3. Edit .env with your configuration
nano .env  # or your preferred editor

# 4. Start the application
docker-compose up --build

# 5. Access the application
# Frontend: http://localhost:3000
# Backend:  http://localhost:8000
```

---

## 🌳 Branch Strategy

We follow a **professional branching model** for clean collaboration and evaluation.

### Branch Overview

```
main                    ← Production-ready, evaluation branch
│
└── develop             ← Integration branch (all features merge here first)
    │
    ├── frontend        ← Frontend integration branch
    │   ├── feat/frontend-auth-<name>
    │   ├── feat/frontend-dashboard-<name>
    │   └── feat/frontend-tracking-<name>
    │
    ├── backend         ← Backend integration branch
    │   ├── feat/backend-api-<name>
    │   ├── feat/backend-auth-<name>
    │   └── feat/backend-database-<name>
    │
    └── devops          ← DevOps & infrastructure
        ├── feat/devops-docker-<name>
        └── feat/devops-ci-<name>
```

### Branch Naming Convention

| Type | Format | Example |
|------|--------|---------|
| Feature | `feat/<area>-<feature>-<name>` | `feat/frontend-auth-adil` |
| Bugfix | `fix/<area>-<issue>-<name>` | `fix/backend-login-sara` |
| Hotfix | `hotfix/<issue>` | `hotfix/critical-auth-bug` |

### Branch Rules

| Branch | Protection | Who Merges | Merge From |
|--------|------------|------------|------------|
| `main` | 🔒 Protected | Team Lead | `develop` only |
| `develop` | 🔒 Protected | Any reviewer | `frontend`, `backend`, `devops` |
| `frontend` | Semi-protected | Frontend lead | `feat/frontend-*` |
| `backend` | Semi-protected | Backend lead | `feat/backend-*` |
| Personal | None | Owner | N/A |

### Merge Workflow

```
1. feat/frontend-auth-adil  →  frontend     (via PR, reviewed)
2. frontend                 →  develop      (via PR, tested)
3. develop                  →  main         (via PR, stable only)
```

---

## 🤝 Contributing

Please read **[CONTRIBUTING.md](CONTRIBUTING.md)** for detailed contribution guidelines.

### Quick Start for Contributors

```bash
# 1. Make sure you're on develop
git checkout develop
git pull origin develop

# 2. Create your feature branch
git checkout -b feat/frontend-your-feature-yourname

# 3. Work on your feature
# ... make changes ...

# 4. Commit with proper message format
git add .
git commit -m "feat(frontend): add login form validation"

# 5. Push your branch
git push origin feat/frontend-your-feature-yourname

# 6. Create a Pull Request on GitHub
```

### Commit Message Format

We use **Conventional Commits**:

```
<type>(<scope>): <description>

[optional body]
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Formatting (no code change)
- `refactor`: Code restructuring
- `test`: Adding tests
- `chore`: Maintenance

**Examples:**
```bash
# ✅ GOOD commits
git commit -m "feat(frontend): add user login page"
git commit -m "fix(backend): resolve JWT token expiration issue"
git commit -m "docs: update API documentation"

# ❌ BAD commits
git commit -m "update"
git commit -m "fix stuff"
git commit -m "asdfasdf"
```

---

## 👥 Team

| Member | Role | Branch Area |
|--------|------|-------------|
| *Name 1* | Team Lead / Backend | `backend`, `devops` |
| *Name 2* | Frontend Lead | `frontend` |
| *Name 3* | Backend Developer | `backend` |
| *Name 4* | Frontend Developer | `frontend` |
| *Name 5* | DevOps / Full-stack | `devops`, support |

> **Note:** Update this table with actual team member names and GitHub usernames.

---

## 📜 License

This project is part of the 42 school curriculum.

---

## 🔗 Links

- [42 ft_transcendence Subject](https://projects.intra.42.fr/)
- [Project Board](https://github.com/YOUR_USERNAME/SSBS_FT_/projects)
- [Issues](https://github.com/YOUR_USERNAME/SSBS_FT_/issues)

---

<p align="center">
  Made with ❤️ by the SSBS Team
</p>
