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
DIR_ARMOR="$DIR_OUTPUT/Armor/"

rip_qual '/items/armor/cloth'   "$DIR_ARMOR/Cloth Armor/"
rip_qual '/items/armor/leather' "$DIR_ARMOR/Leather Armor/"
rip_qual '/items/armor/mail'    "$DIR_ARMOR/Mail Armor/"
rip_qual '/items/armor/plate'   "$DIR_ARMOR/Plate Armor/"
rip_qual '/items/armor/cloaks'  "$DIR_ARMOR/Cloaks/"
rip_qual '/items/armor/shirts'  "$DIR_ARMOR/Shirts/"
rip_qual '/items/armor/shields' "$DIR_ARMOR/Shields/"


# Weapons
# =======
DIR_WEAPONS="$DIR_OUTPUT/Weapons/"

rip_qual '/items/weapons/crossbows'         "$DIR_WEAPONS/Crossbows/"
rip_qual '/items/weapons/guns'              "$DIR_WEAPONS/Guns/"
rip_qual '/items/weapons/wands'             "$DIR_WEAPONS/Wands/"
rip_qual '/items/weapons/bows'              "$DIR_WEAPONS/Bows/"
rip_qual '/items/weapons/daggers'           "$DIR_WEAPONS/Daggers/"
rip_qual '/items/weapons/fishing-poles'     "$DIR_WEAPONS/Fishing Poles/"
rip_qual '/items/weapons/fist-weapons'      "$DIR_WEAPONS/Fist Weapons/"
rip_qual '/items/weapons/one-handed-axes'   "$DIR_WEAPONS/One-Handed Axes/"
rip_qual '/items/weapons/one-handed-maces'  "$DIR_WEAPONS/One-Handed Maces/"
rip_qual '/items/weapons/one-handed-swords' "$DIR_WEAPONS/One-Handed Swords/"
rip_qual '/items/weapons/polearms'          "$DIR_WEAPONS/Polearms/"
rip_qual '/items/weapons/staves'            "$DIR_WEAPONS/Staves/"
rip_qual '/items/weapons/two-handed-axes'   "$DIR_WEAPONS/Two-Handed Axes/"
rip_qual '/items/weapons/two-handed-maces'  "$DIR_WEAPONS/Two-Handed Maces/"
rip_qual '/items/weapons/two-handed-swords' "$DIR_WEAPONS/Two-Handed Swords/"
rip_qual '/items/weapons/warglaives'        "$DIR_WEAPONS/Warglaives/"


# Crafting Recipes
# ================
DIR_RECIPES="$DIR_OUTPUT/Recipes/"
mkdir -p "$DIR_RECIPES/"

./rip-single-url.py '/items/recipes/alchemy'        "$DIR_RECIPES/Alchemy.txt"
./rip-single-url.py '/items/recipes/blacksmithing'  "$DIR_RECIPES/Blacksmithing.txt"
./rip-single-url.py '/items/recipes/cooking'        "$DIR_RECIPES/Cooking.txt"
./rip-single-url.py '/items/recipes/enchanting'     "$DIR_RECIPES/Enchanting.txt"
./rip-single-url.py '/items/recipes/engineering'    "$DIR_RECIPES/Engineering.txt"
./rip-single-url.py '/items/recipes/first-aid'      "$DIR_RECIPES/First Aid.txt"
./rip-single-url.py '/items/recipes/inscription'    "$DIR_RECIPES/Inscription.txt"
./rip-single-url.py '/items/recipes/jewelcrafting'  "$DIR_RECIPES/Jewelcrafting.txt"
./rip-single-url.py '/items/recipes/leatherworking' "$DIR_RECIPES/Leatherworking.txt"
./rip-single-url.py '/items/recipes/tailoring'      "$DIR_RECIPES/Tailoring.txt"
