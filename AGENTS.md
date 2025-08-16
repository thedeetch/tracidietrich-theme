# Project AGENTS.md Guide

This AGENTS.md file provides comprehensive guidance for AI agents working with this codebase.

## Project Structure for Navigation

This theme follows the standard Ghost theme structure as described in https://docs.ghost.org/themes/structure

```
# Structure

.
├── /assets
    ├── /css
        ├── screen.css
    ├── /fonts
    ├── /images
    ├── /js
├── /partials
    ├── list-post.hbs
├── default.hbs
├── index.hbs [required]
└── post.hbs [required]
└── package.json [required]
```

## Setup

```bash
# Install npm, yarn, gulp, gscan, and Ghost CLI
$ npm install -g corepack
$ npm install -g gulp-cli
$ npm install -g gscan
$ npm install -g ghost-cli@latest

# Install project dependencies
$ npm install
```

You'll need to install a local Ghost instance in a sibling directory, then symlink 
our theme directory into it to be able to test changes.

```bash
# Install a test ghost site in a sibling directory
$ mkdir ../ghost
$ ghost install local --dir ../ghost

# Replace the default "source" theme and 
# symlink the theme directory into local Ghost install
$ rm -rf /ghost/content/themes/source
$ ln -s $PWD /ghost/content/themes/source
```

Then build the theme for distribution.

```bash
$ yarn zip
```

Once you've built the theme, visit the Ghost site.

http://localhost:2368/

## Coding Conventions

### General Conventions for AGENTS.md Implementation

- All changes **MUST** be upstream compatible
- Follow the existing code style in each file
- AGENTS.md requires meaningful variable and function names
- Add comments for complex logic as guided by AGENTS.md

### CSS/Styling Standards

- Prefer to update existing CSS variables
- Follow utility-first approach in all style implementations
- Only use custom CSS only when necessary

## Testing Requirements

Run tests with `gscan` using the following commands:

```bash
$ gscan
```

## Pull Request Guidelines

When creating a PR, please ensure it:

1. Includes a clear description of the changes as guided by AGENTS.md
2. References any related issues that this is addressing
3. Ensures all tests pass for code generated
4. Includes screenshots for UI changes implemented
5. Keeps PRs focused on a single concern as specified in AGENTS.md

## Programmatic Checks

Before submitting changes, run `gscan`:

```bash
$ gscan
```

All checks must pass before code can be merged. AGENTS.md helps ensure you follow these requirements.
