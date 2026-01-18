/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './_layouts/**/*.html',
    './_includes/**/*.html',
    './*.html',
  ],
  theme: {
    extend: {
      colors: {
        primary: '#6f42c1',
        dark: '#212529',
        light: '#f8f9fa',
      },
    },
  },
  plugins: [],
}
