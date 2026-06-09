# geekend-pnw.github.com

## About

This is the website for [geekend-pnw.com](https://www.geekend-pnw.com).

## Local development

This project uses a [Nix](https://nixos.org/) flake for a reproducible development environment. [direnv](https://direnv.net/) is optional but recommended.

**Prerequisites:** Nix with flakes enabled. For direnv, run `direnv allow` once in the project directory.

```bash
# Enter the dev shell (or let direnv do it automatically)
nix develop

# First run installs gems to vendor/bundle automatically.
# To reinstall gems after Gemfile changes:
rm vendor/bundle/.bundle-complete && bundle install

# Build the site
bundle exec jekyll build

# Run a local preview server at http://localhost:4000
bundle exec jekyll serve
```

**Stack:** Ruby 3.3.10 (via nixpkgs; see `.ruby-version`), github-pages 232, Jekyll 3.10.0.

## Editing pages

You can also update pages using the built-in text editing functions in GitHub.

To create a new event, create a new file with the name `<year>-<month>.md` in `_events/`. It will need the following frontmatter block:

```
---
title: "<EVENT TITLE>"
event_id: <year>-<month>
---
```

Build out the page; use other events to understand how things get put together.

The games, participants, and schedules sections should come from `include` files. Games live in `/_games` (one file per game, with an `events` list tying them to an event). Participants are in `/_data/players.yml`. Schedules are CSV files in `/_data/schedules/`.

To edit these sections, add the include command `{% include game-list.md %}` on event pages, then edit the associated source files.

The `event_id` in the frontmatter of an event page is the key for linking players, games, and schedules to an event.
