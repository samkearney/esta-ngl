#!/bin/sh

set -e

# Clone the repository at the gh-pages branch in a directory structure that
# mirrors the Sphinx build directory
cd docs
mkdir _build
cd _build
git clone -b gh-pages https://git@github.com/samkearney/esta-ngl html
cd html

# Configure git.
# Set the push default to simple i.e. push only the current branch.
git config --global push.default simple
# Pretend to be a user called GitHub CI.
git config user.name "GitHub CI"
git config user.email "noreply@github.com"

# Generate the Sphinx documentation.
cd ../..
make html
cd _build/html

# Commit the documentation on the gh-pages branch.
git add --all

# Check to see if there are any differences in the documentation.
if ! git diff-index --quiet HEAD; then
  echo 'Uploading documentation to the gh-pages branch...'
  # Commit the added files with a title and description containing the Azure Pipelines
  # build number and the GitHub commit reference that issued this build.
  git commit -m "Deploy code docs to GitHub Pages from Github Actions" -m "Run number: ${GITHUB_RUN_NUMBER}" -m "Commit: ${GITHUB_SHA}"
else
  echo 'No documentation changes. Doing nothing.'
fi
