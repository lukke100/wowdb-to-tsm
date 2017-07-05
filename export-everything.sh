#!/usr/bin/env sh
set -euo pipefail
IFS=$(printf '\n\t')

DIR_EXPORTS='exports/'

mkdir -p "$DIR_EXPORTS"

# Armor
# =====
./export-groups.py "output/Armor/" > "$DIR_EXPORTS/armor.txt"

# Weapons
# =======
./export-groups.py "output/Weapons/" > "$DIR_EXPORTS/weapons.txt"

# Recipes
# =======
./export-groups.py "output/Recipes/" > "$DIR_EXPORTS/recipes.txt"

