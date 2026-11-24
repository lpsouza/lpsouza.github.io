# Frontend Team Context

## Domain

Focus on the visual presentation, Tailwind CSS styling, and CSS-first user interaction of the website.

## Key Responsibilities

1. Creating and updating Jekyll layouts (`_layouts`).
2. Creating reusable components (`_includes`).
3. Styling pages with Tailwind CSS (`tailwind.config.js`, `assets/css/src/input.css`).
4. Compiling CSS with `./scripts/build-css.sh` into `./assets/css/style.css`.
5. Ensuring responsive design across devices.

## Directives

- Prefer Tailwind utility classes and CSS-only solutions for interactivity (e.g., hover effects, CSS Grid/Flexbox for alignment).
- Restrict Vanilla JavaScript to dedicated client-side utility pages or cases where CSS is insufficient.
- Validate HTML structure to ensure it renders correctly on GitHub Pages.
