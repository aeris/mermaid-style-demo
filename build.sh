#!/usr/bin/env bash
set -xe
pnpm install
pnpm exec mmdc --input diagram.mmdc --output default.png
pnpm exec mmdc --theme forest --input diagram.mmdc --output theme-from-cli.png
pnpm exec mmdc --configFile theme.json --input diagram.mmdc --output theme-from-config.png
pnpm exec mmdc --configFile variables.json --input diagram.mmdc --output variables.png
pnpm exec mmdc --cssFile style.css --input diagram.mmdc --output css.png