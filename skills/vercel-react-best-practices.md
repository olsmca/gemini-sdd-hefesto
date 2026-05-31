# Vercel & React Modern Best Practices

When building frontend applications, adhere to these rules:

1. **Next.js App Router:** Use the App Router for all Next.js projects.
2. **Server Components:** Default to Server Components. Use `'use client'` only when necessary (interactivity, state hooks, client context).
3. **Data Fetching:** Use `fetch` with built-in caching and revalidation. Prefer Server Actions for mutations.
4. **Performance:**
   - Optimize images with `next/image`.
   - Use dynamic imports for heavy components.
   - Minimize bundle size and eliminate unused imports.
5. **Deployment:** Target Vercel for deployment.
6. **Styling:** Use Tailwind CSS or Vanilla CSS for clean responsive grids and layouts.
