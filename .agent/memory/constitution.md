# Constitution

> **IMMUTABLE LAWS**: This document defines the hard constraints for the project. Agents cannot ignore or override these rules.

## 1. Tech Stack
- **Framework**: Jekyll (Static Site Generator).
- **Templating**: Liquid.
- **Markup**: HTML5 (Semantic).
- **Styling**: CSS3 (SCSS/SASS allowed if configured, otherwise vanilla CSS).
- **Scripting**: **NONE** (See constraint below).

## 2. Hard Constraints
- **NO JAVASCRIPT**: The project MUST function without Javascript. JS is only permitted as a last resort for critical functionality that CSS cannot handle (e.g., complex toggle state that `checked` hack cannot solve, though `checked` hack is preferred).
- **NO FRAMEWORKS**: Do not introduce React, Vue, jQuery, Tailwind, Bootstrap, etc. unless explicitly requested by the user. Use native web technologies.
- **NO BACKEND**: This is a static site hosted on GitHub Pages. No server-side logic (Node, Python, PHP).

## 3. Coding Standards
- **HTML**:
  - Use semantic tags (`<header>`, `<nav>`, `<main>`, `<article>`, `<footer>`).
  - Accessibility first (ARIA labels where necessary, proper alt text).
- **CSS**:
  - Use Flexbox and Grid for layouts.
  - Mobile-first media queries.
  - Keep specificity low (BEM methodology recommended but not enforced if code is simple).
- **Jekyll**:
  - Use `_includes` for reusable UI components.
  - Use `_layouts` for page templates.

## 4. Testing
- **NO AUTOMATED TESTS**: As per user directive, no unit or E2E tests are required at this stage. Focus on visual verification.
