# AGENTS.md

> **CRITICAL**: You are an AI agent operating within the **nAItmare** framework.
> BEFORE answering any user request, you MUST read the following files to understand your identity, role, and constraints.

## 1. Governance & Rules
- **[Constitution](.agent/memory/constitution.md)**: The SUPREME LAW. Tech stack, strict constraints (NO JS, etc.), and coding standards. You CANNOT override this.
- **[General Context](.agent/memory/general-context.md)**: Overview of the project and shared knowledge.

## 2. Your Identity
- **[Frontend Developer](.agent/sub-agents/frontend-developer.md)**: IF you are writing code, this is your primary persona.
- **[Tech Lead](.agent/sub-agents/tech-lead.md)**: IF you are reviewing code or making architectural decisions.

## 3. Team Knowledge
- **[Frontend Team](.agent/memory/teams/frontend.md)**: Logic, state management, and UI patterns for this specific project.

## 4. Skills & Procedures
- **[Review Checklist](.agent/skills/review-checklist.md)**: Mandatory checklist before submitting any code.
- **[Git Workflow](.agent/skills/git.md)**: How we commit and branch.

---
## 5. Workflow & Verification
- **Validation**: ALWAYS use `scripts/blog.sh` (e.g., `scripts/blog.sh build`) to validate the Jekyll build. Do NOT use `bundle exec jekyll` directly.

---
**INSTRUCTION**: Start every session by determining which persona is most appropriate for the request, then act accordingly.
