#!/usr/bin/env sh
set -euo pipefail
IFS=$(printf '\n\t')

# NOTE: This function fails when "$1" contains a query string.
rip_qual()
{
  mkdir -p "$2"

  ./rip-single-url.py "$1?filter-quality=4"  "$2/Uncommon.txt"
  ./rip-single-url.py "$1?filter-quality=8"  "$2/Rare.txt"
  ./rip-single-url.py "$1?filter-quality=16" "$2/Epic.txt"
  ./rip-single-url.py "$1?filter-quality=32" "$2/Legendary.txt"
}


DIR_OUTPUT="output/"


# Armor
# =====
DIR_ARMOR="$DIR_OUTPUT/armor/"

rip_qual '/items/armor/cloth'   "$DIR_ARMOR/Cloth Armor/"
rip_qual '/items/armor/leather' "$DIR_ARMOR/Leather Armor/"
rip_qual '/items/armor/mail'    "$DIR_ARMOR/Mail Armor/"
rip_qual '/items/armor/plate'   "$DIR_ARMOR/Plate Armor/"
rip_qual '/items/armor/cloaks'  "$DIR_ARMOR/Cloaks/"
rip_qual '/items/armor/shirts'  "$DIR_ARMOR/Shirts/"
rip_qual '/items/armor/shields' "$DIR_ARMOR/Shields/"


# Crafting Recipes
# ================
DIR_RECIPES="$DIR_OUTPUT/recipes/"
mkdir -p "$DIR_RECIPES/"

./rip-single-url.py '/items/recipes/alchemy'        "$DIR_RECIPES/alchemy.txt"
./rip-single-url.py '/items/recipes/blacksmithing'  "$DIR_RECIPES/blacksmithing.txt"
./rip-single-url.py '/items/recipes/cooking'        "$DIR_RECIPES/cooking.txt"
./rip-single-url.py '/items/recipes/enchanting'     "$DIR_RECIPES/enchanting.txt"
./rip-single-url.py '/items/recipes/engineering'    "$DIR_RECIPES/engineering.txt"
./rip-single-url.py '/items/recipes/first-aid'      "$DIR_RECIPES/first-aid.txt"
./rip-single-url.py '/items/recipes/inscription'    "$DIR_RECIPES/inscription.txt"
./rip-single-url.py '/items/recipes/jewelcrafting'  "$DIR_RECIPES/jewelcrafting.txt"
./rip-single-url.py '/items/recipes/leatherworking' "$DIR_RECIPES/leatherworking.txt"
./rip-single-url.py '/items/recipes/tailoring'      "$DIR_RECIPES/tailoring.txt"
