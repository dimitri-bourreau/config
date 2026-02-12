# Tech Stack

React, Next.js, TypeScript, Tailwind CSS, Playwright, nuqs, TanStack Query, shadcn/ui

# Code Style

- Use explicit variable names: avoid `e`, `data`, `item`, `res`
- Use `&apos;` instead of `'` in JSX strings, not un .md files
- Keep functions short: 10 lines maximum
- Avoid comments: use descriptive names instead
- Remove unused imports
- Prioritize simplicity over abstraction

# Project Structure

```
features/{domain}/
  api/
    {domain}.port.ts        # Interface defining repository methods
    api.adapter.ts          # Implementation using IndexedDB/API
  services/
    {action}.service.ts     # Business logic, receives repository as parameter
  types/
    {name}.type.ts          # TypeScript interfaces and types
    {name}-dto.type.ts      # Data transfer objects
  mocks/
    {name}.mock.ts          # Mock of data as used or received

hooks/
  use-{action}.hook.ts      # One hook per file, uses TanStack Query
  use-{domain}s.hook.ts     # Plural for list queries

components/
  atoms/                    # Basic UI elements
  molecules/                # Combinations of atoms
  organisms/                # Complex components with logic
  ui/                       # shadcn/ui components (do not modify)

e2e-tests/
  {feature}.spec.ts         # Playwright tests
  helpers.ts                # Shared test utilities
  mock-data.ts              # Test fixtures
```

# Coding Conventions

- Write components and handlers as arrow functions
- Name files in kebab-case: `company-list.tsx`, `use-companies.hook.ts`
- Limit components to 150 lines
- Separate UI from logic: components call hooks, hooks call services

# Git Hooks (Husky)

- **pre-commit**: runs `lint-staged` (Prettier + ESLint on staged files)
- **pre-push**: runs `npm run build && npm test`
- Commit and push are blocked if any check fails

# Testing

- Write Playwright e2e tests in `e2e-tests/`
- Propose a test when implementing a new feature systematically
- When updating a feature, some logic, check if an e2e tests exists about it and update it accordingly
- Do not run build or tests: I will handle this
- Testing a feature is also testing failures are absence of feature (if a table is displayed on a condition, check it is not displayed if that condition is not met as well)
- Tests are short and assert one thing only
- Mocked data are in `features/{domain}/mocks/`

# Interaction Rules

- Keep responses concise: 1-3 paragraphs
- Execute only what is requested
- Avoid unnecessary CLI commands

# Creating a webapp from scratch

- Use Next.js with the app router
- Use TypeScript, TailwindCSS, Shadcn, nuqs
- Use ESLint, Prettier
- Set up husky : pre-commit are lint & format, pre-push is build

# Frontend rules

- Always respect a good contrast ratio
- Buttons must have a pointer cursor
- Prefer subtle and discrete animations, never move the content itself, animations should be about the decoration
