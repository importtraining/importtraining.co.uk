#!/bin/bash

set -e

REPO_URL=git@github.com:importtraining/importtraining.co.uk.git

# Remove output directory and replace it with the current tip of the gh-pages
# branch.
rm -rf output
git clone $REPO_URL --branch gh-pages --single-branch output

# Update the output directory with recent changes.
make build

# Add, commit, and push any changes.
cd output
git add .
git commit -m "Auto-commit.  Built latest changes."
git push $REPO_URL gh-pages

# Clean up.
rm -rf .git
