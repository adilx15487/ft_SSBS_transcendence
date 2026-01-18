# 🤝 Contributing to SSBS

Welcome to the **SSBS (Smart School Bus System)** project! This document outlines our contribution guidelines and workflow.

> **Important:** Following these guidelines is crucial for 42 evaluations. Clean commit history and fair contribution distribution are evaluated!

---

## 📋 Table of Contents

- [Code of Conduct](#-code-of-conduct)
- [Getting Started](#-getting-started)
- [Branch Workflow](#-branch-workflow)
- [Commit Guidelines](#-commit-guidelines)
- [Pull Request Process](#-pull-request-process)
- [Code Standards](#-code-standards)
- [Review Checklist](#-review-checklist)

---

## 📜 Code of Conduct

- Be respectful and professional
- Help your teammates
- Write clean, documented code
- Don't push to protected branches directly
- Always test before creating a PR

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/SSBS_FT_.git
cd SSBS_FT_
```

### 2. Set Up Your Environment

```bash
# Copy environment variables
cp .env.example .env

# Edit with your values
nano .env
```

### 3. Start Development Environment

```bash
docker-compose up --build
```

### 4. Create Your Feature Branch

```bash
# Always start from develop
git checkout develop
git pull origin develop

# Create your branch
git checkout -b feat/frontend-your-feature-yourname
```

---

## 🌳 Branch Workflow

### Branch Hierarchy

```
main (protected)
  └── develop (protected)
        ├── frontend (semi-protected)
        │     └── feat/frontend-*-<name>
        ├── backend (semi-protected)
        │     └── feat/backend-*-<name>
        └── devops
              └── feat/devops-*-<name>
```

### Branch Naming Convention

| Type | Pattern | Example |
|------|---------|---------|
| Feature | `feat/<area>-<feature>-<name>` | `feat/frontend-auth-adil` |
| Bug Fix | `fix/<area>-<bug>-<name>` | `fix/backend-login-sara` |
| Hotfix | `hotfix/<issue>` | `hotfix/critical-bug` |
| Docs | `docs/<topic>` | `docs/api-documentation` |

### Where to Branch From

| You're Working On | Branch From | Merge Into |
|-------------------|-------------|------------|
| Frontend feature | `frontend` | `frontend` |
| Backend feature | `backend` | `backend` |
| DevOps/Docker | `develop` | `develop` |
| Documentation | `develop` | `develop` |

### Merge Flow

```
Your branch → Area branch → develop → main

Example:
feat/frontend-login-adil → frontend → develop → main
```

---

## ✍️ Commit Guidelines

We use **Conventional Commits** format.

### Commit Message Format

```
<type>(<scope>): <short description>

[optional body]

[optional footer]
```

### Types

| Type | Description |
|------|-------------|
| `feat` | New feature |
| `fix` | Bug fix |
| `docs` | Documentation only |
| `style` | Formatting, no code change |
| `refactor` | Code restructuring |
| `test` | Adding/updating tests |
| `chore` | Maintenance tasks |

### Scopes

| Scope | When to Use |
|-------|-------------|
| `frontend` | Frontend changes |
| `backend` | Backend changes |
| `docker` | Docker/DevOps changes |
| `db` | Database changes |
| `api` | API changes |
| `auth` | Authentication |
| `ui` | UI components |

### Examples

```bash
# ✅ GOOD Commits
git commit -m "feat(frontend): add user login form with validation"
git commit -m "fix(backend): resolve JWT token refresh issue"
git commit -m "docs(api): add endpoint documentation for /users"
git commit -m "style(frontend): format code with prettier"
git commit -m "refactor(backend): extract auth logic to service"
git commit -m "test(backend): add unit tests for user service"
git commit -m "chore(docker): update postgres version to 15"

# ❌ BAD Commits - NEVER DO THIS
git commit -m "update"
git commit -m "fix"
git commit -m "wip"
git commit -m "asdfasdf"
git commit -m "changes"
git commit -m "final version"
git commit -m "final version 2"
```

### Why This Matters for 42

- Evaluators check commit history
- Shows individual contribution
- Proves you understand your code
- Professional git skills = employable

---

## 🔀 Pull Request Process

### Before Creating a PR

- [ ] Your code compiles/runs without errors
- [ ] You've tested your changes locally
- [ ] You've pulled latest changes from target branch
- [ ] No merge conflicts exist
- [ ] Code follows our style guidelines
- [ ] Commit messages follow convention

### Creating a PR

1. Push your branch to GitHub:
   ```bash
   git push origin feat/frontend-your-feature-yourname
   ```

2. Go to GitHub and create a Pull Request

3. Fill in the PR template:
   - Clear title (same format as commits)
   - Description of changes
   - Screenshots (for UI changes)
   - Related issue numbers

### PR Title Format

```
<type>(<scope>): <description>

Example:
feat(frontend): add user authentication flow
fix(backend): resolve database connection timeout
```

### PR Description Template

```markdown
## Description
Brief description of what this PR does.

## Type of Change
- [ ] New feature
- [ ] Bug fix
- [ ] Refactoring
- [ ] Documentation
- [ ] Other (describe)

## Changes Made
- Change 1
- Change 2

## Screenshots (if UI changes)
[Add screenshots here]

## Testing Done
- [ ] Tested locally
- [ ] Added/updated tests
- [ ] All tests pass

## Related Issues
Closes #issue_number
```

### After Creating a PR

1. Request review from at least 1 team member
2. Address review comments
3. Wait for approval
4. Squash and merge (keep history clean)

---

## 💻 Code Standards

### General Rules

- Write clean, readable code
- Comment complex logic
- Use meaningful variable/function names
- Keep functions small and focused
- DRY (Don't Repeat Yourself)

### Frontend Standards

```
frontend/
├── src/
│   ├── components/     # Reusable UI components
│   ├── pages/          # Page components
│   ├── services/       # API calls
│   ├── hooks/          # Custom hooks
│   ├── utils/          # Helper functions
│   ├── styles/         # CSS/SCSS files
│   ├── types/          # TypeScript types
│   └── constants/      # Constants & config
```

**Rules:**
- No backend logic in frontend
- Use environment variables for API URLs
- Component files: PascalCase (`LoginForm.tsx`)
- Utility files: camelCase (`formatDate.ts`)
- CSS class naming: BEM or CSS Modules

### Backend Standards

```
backend/
├── src/
│   ├── controllers/    # Request handlers
│   ├── services/       # Business logic
│   ├── models/         # Database models
│   ├── routes/         # API routes
│   ├── middlewares/    # Custom middlewares
│   ├── utils/          # Helper functions
│   └── config/         # Configuration
```

**Rules:**
- Separate concerns (controller ≠ service ≠ model)
- Validate all inputs
- Handle errors properly
- Use environment variables for secrets
- Document API endpoints

---

## ✅ Review Checklist

### For Reviewers

When reviewing a PR, check:

- [ ] Code compiles without errors
- [ ] Logic is correct and efficient
- [ ] No security vulnerabilities
- [ ] Code follows our standards
- [ ] Commit messages are proper
- [ ] Tests are included (if needed)
- [ ] No unnecessary files
- [ ] Documentation updated (if needed)

### Approval Rules

| Target Branch | Required Approvals |
|---------------|-------------------|
| `main` | 2 approvals + Team Lead |
| `develop` | 1 approval |
| `frontend`/`backend` | 1 approval |

---

## 🚨 Important Reminders

### DO ✅

- Pull latest changes before starting work
- Create small, focused PRs
- Write descriptive commit messages
- Test your code thoroughly
- Ask for help when stuck
- Review others' PRs promptly

### DON'T ❌

- Push directly to `main` or `develop`
- Merge your own PR without review
- Leave PRs open for too long
- Write vague commit messages
- Ignore review comments
- Copy code without understanding it

---

## 🆘 Getting Help

- **Stuck on something?** Ask in team chat
- **Found a bug?** Create an issue on GitHub
- **Have an idea?** Discuss in team meeting first

---

## 📊 Contribution Tracking

Your contributions are tracked through:

1. **Commits** - Your commit history
2. **PRs** - Pull requests you create
3. **Reviews** - PRs you review
4. **Issues** - Issues you create/resolve

This ensures fair evaluation at 42!

---

<p align="center">
  Happy coding! 🚀
</p>
