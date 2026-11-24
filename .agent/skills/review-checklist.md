# Review Checklist

## Fundamentals

- [ ] Is `constitution.md` followed? (Minimal JS, no heavy JS frameworks).
- [ ] Is Semantic HTML used?
- [ ] Is the design responsive (mobile-first)?

## Code & Styling Quality

- [ ] Are Tailwind utility classes used cleanly according to `tailwind.config.js`?
- [ ] Was `./scripts/build-css.sh` executed after Tailwind or `assets/css/src/input.css` changes?
- [ ] Is redundant custom CSS avoided?

## Jekyll & Editorial Specifics

- [ ] Are `_includes` used for repeated components?
- [ ] Does the Liquid syntax look correct?
- [ ] Do modified or new posts follow `.markdownlint.json` and the standard front matter schema?
- [ ] Does `./scripts/blog.sh build` pass without errors?
