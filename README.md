# A Collection of Unofficial Arch Linux Packages

This repo exists purely to facilitate my use of `paru` to install certain packages which aren't in the Arch repos or the AUR.
Some of these could probably be added to the AUR at some point, but I'd prefer to maintain this repo for myself, rather than being an AUR maintainer for the general userbase :)

## Usage

### Adding Packages

Adding packages is accomplished simply by cloning a repo containing a PKGBUILD into the `repos` directory (ignored, so it needs to be created in fresh clones of *this* repo).
From this point, it'll be picked up during the following process.

### Updating PKGBUILDs

To fetch updates, run the `update.sh` script in this repo's root.
It scans the `repos` directory for Git repos with contain PKGBUILDs, and copies those into appropriately-named folders in the repo's top level.
Commit and push to make the new or updated PKGBUILDs globally availiable.
