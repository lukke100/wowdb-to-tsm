#!/usr/bin/env sh
set -euo pipefail
IFS=$(printf '\n\t')

DIR_EXPORTS='exports/'

mkdir -p "$DIR_EXPORTS"

# Armor
# =====
./export-groups.py "output/Armor/Cloaks/"        > "$DIR_EXPORTS/armor-cloaks.txt"
./export-groups.py "output/Armor/Cloth Armor/"   > "$DIR_EXPORTS/armor-cloth.txt"
./export-groups.py "output/Armor/Leather Armor/" > "$DIR_EXPORTS/armor-leather.txt"
./export-groups.py "output/Armor/Mail Armor/"    > "$DIR_EXPORTS/armor-mail.txt"
./export-groups.py "output/Armor/Plate Armor/"   > "$DIR_EXPORTS/armor-plate.txt"
./export-groups.py "output/Armor/Shields/"       > "$DIR_EXPORTS/armor-shields.txt"
./export-groups.py "output/Armor/Shirts/"        > "$DIR_EXPORTS/armor-shirts.txt"

# Weapons
# =======
./export-groups.py "output/Weapons/" > "$DIR_EXPORTS/weapons.txt"

# Recipes
# =======
./export-groups.py "output/Recipes/" > "$DIR_EXPORTS/recipes.txt"

