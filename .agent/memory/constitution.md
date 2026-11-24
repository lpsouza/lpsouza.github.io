# Constitution

> **IMMUTABLE LAWS**: This document defines the hard constraints for the project. Agents cannot ignore or override these rules.

## 1. Tech Stack

- **Framework**: Jekyll (Static Site Generator).
- **Templating**: Liquid.
- **Markup**: HTML5 (Semantic).
- **Styling**: Tailwind CSS v3.4.1 (Standalone CLI via `scripts/build-css.sh` and `tailwind.config.js`) and custom CSS3 in `assets/css/src/input.css`.
- **Scripting**: Minimal Vanilla JavaScript (see constraint below).

## 2. Hard Constraints

- **MINIMAL JAVASCRIPT**: Core layout, navigation, and content MUST function without JavaScript. Vanilla JS is permitted only for client-side utility pages (e.g., `search.html`, `utm.html`) or critical interactions that CSS cannot solve.
- **NO HEAVY JS FRAMEWORKS**: Do not introduce React, Vue, jQuery, Bootstrap, etc. unless explicitly requested by the user. Tailwind CSS is the approved styling framework.
- **NO BACKEND**: This is a static site hosted on GitHub Pages. No server-side logic (Node, Python, PHP).

## 3. Coding Standards

- **HTML**:
  - Use semantic tags (`<header>`, `<nav>`, `<main>`, `<article>`, `<footer>`).
  - Accessibility first (ARIA labels where necessary, proper alt text).
- **CSS / Tailwind**:
  - Prefer Tailwind utility classes defined in `tailwind.config.js`.
  - Use Flexbox and Grid for layouts with mobile-first responsive prefixes.
  - Keep custom CSS minimal in `assets/css/src/input.css` and rebuild `./assets/css/style.css` using `scripts/build-css.sh`.
- **Jekyll**:
  - Use `_includes` for reusable UI components.
  - Use `_layouts` for page templates.

## 4. Testing & Validation

- **NO AUTOMATED TESTS**: As per user directive, no unit or E2E tests are required at this stage. Focus on visual and build verification.
- **CSS BUILD**: Run `./scripts/build-css.sh` whenever Tailwind classes or `assets/css/src/input.css` are modified.
- **SITE BUILD**: ALWAYS use `./scripts/blog.sh build` to validate the Jekyll build.
