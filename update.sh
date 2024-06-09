#!/bin/sh

echo ":: Scanning for repo PKGBUILDs..."
repos=()
for repo in $(find repos/ -mindepth 1 -type d -exec test -e {}/.git \; -print -prune);
do
    if [ -f "$repo/PKGBUILD" ];
    then
        echo " Found $repo"
        repos+=("$repo")
    fi
done

echo ":: Updating repos..."
for repo in ${repos[@]};
do
    echo " Pulling $repo..."
    git -C "$repo" pull

    echo " Copying PKGBUILD..."
    sh <<EOF
        source "$repo/PKGBUILD"
        mkdir -p "\$pkgname"
        cp "$repo/PKGBUILD" "\$pkgname/"
EOF
done
