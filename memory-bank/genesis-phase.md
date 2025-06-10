# Genesis Boot-Phase

> **INITIALIZATION DOCUMENT** - Steps for minimal environment setup when cloning or starting the project. Incorporates dependency checks, environment detection, and git validation.

## Updated Minimal Boot-Phase Checks

1. **Check for `node_modules` folder**
2. **If missing**:
   - Detect package manager:
     - `pnpm-lock.yaml` → **pnpm**
     - `package-lock.json` or `npm-shrinkwrap.json` → **npm**
     - `yarn.lock` → **yarn**
   - If pnpm:
     - Look for `pnpm-workspace.yaml` to configure workspaces
     - Branch per workspace configuration
   - Install dependencies via the detected manager
3. **Verify** `node_modules` exists:
   - Success → log "Dependencies installed"
   - Failure → alert "Dependency installation failed"
4. **Detect container environment**:
   - Presence of `/.dockerenv` file or `CI=true` env var → mark as "inside container"
5. **Validate Git repository**:
   - Run `git rev-parse --is-inside-work-tree`
   - If true → retrieve and log `git status` and current branch

## Natural-Language Procedural Commands

- Validate presence and integrity of system, development, and user instruction files; repair or create if needed.
- Check for AI-agent knowledge file; if valid, load; if corrupted, attempt repair; if missing, create new.
- Load AI-agent context (VSCode/Codex/Copilot/Cline AI) and their config/state files.
- Confirm context invariants and activate any defined initializers.
- Detect and initialize Git submodules when present.
- Detect package manager (npm/pnpm/yarn) and activate dependency manager.
- Detect and activate Python environment if required.
- Detect Docker environment and activate container services if needed.
- Mark environment as "development ready" (no running services yet).
- **Genesis phase**: perform steps 1–5 from the Minimal Boot-Phase Checks above.

## Instructions for AI Agents

- Reference this document when setting up a fresh environment.
- Update if boot procedures change or new checks are required.
- Cross-reference techContext.md for detailed environment info.
