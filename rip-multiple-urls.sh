#!/usr/bin/env sh
set -euo pipefail
IFS=$(printf '\n\t')

# NOTE: This function fails when "$1" contains a query string.
rip_boe()
{
  mkdir -p "$(dirname "$2")"

  ./rip-single-url.py "$1?filter-bind=2" "$2"
}


DIR_OUTPUT="output/"


# Armor
# =====
DIR_ARMOR="$DIR_OUTPUT/Armor/"

rip_boe '/items/armor/cloaks'    "$DIR_ARMOR/Cloaks.txt"
rip_boe '/items/armor/cloth'     "$DIR_ARMOR/Cloth Armor.txt"
rip_boe '/items/armor/leather'   "$DIR_ARMOR/Leather Armor.txt"
rip_boe '/items/armor/mail'      "$DIR_ARMOR/Mail Armor.txt"
rip_boe '/items/armor/necklaces' "$DIR_ARMOR/Necklaces.txt"
rip_boe '/items/armor/plate'     "$DIR_ARMOR/Plate Armor.txt"
rip_boe '/items/armor/rings'     "$DIR_ARMOR/Rings.txt"
rip_boe '/items/armor/shields'   "$DIR_ARMOR/Shields.txt"
rip_boe '/items/armor/shirts'    "$DIR_ARMOR/Shirts.txt"
rip_boe '/items/armor/trinkets'  "$DIR_ARMOR/Trinkets.txt"


# Weapons
# =======
DIR_WEAPONS="$DIR_OUTPUT/Weapons/"

rip_boe '/items/weapons/crossbows'         "$DIR_WEAPONS/Crossbows.txt"
rip_boe '/items/weapons/guns'              "$DIR_WEAPONS/Guns.txt"
rip_boe '/items/weapons/wands'             "$DIR_WEAPONS/Wands.txt"
rip_boe '/items/weapons/bows'              "$DIR_WEAPONS/Bows.txt"
rip_boe '/items/weapons/daggers'           "$DIR_WEAPONS/Daggers.txt"
rip_boe '/items/weapons/fishing-poles'     "$DIR_WEAPONS/Fishing Poles.txt"
rip_boe '/items/weapons/fist-weapons'      "$DIR_WEAPONS/Fist Weapons.txt"
rip_boe '/items/weapons/one-handed-axes'   "$DIR_WEAPONS/One-Handed Axes.txt"
rip_boe '/items/weapons/one-handed-maces'  "$DIR_WEAPONS/One-Handed Maces.txt"
rip_boe '/items/weapons/one-handed-swords' "$DIR_WEAPONS/One-Handed Swords.txt"
rip_boe '/items/weapons/polearms'          "$DIR_WEAPONS/Polearms.txt"
rip_boe '/items/weapons/staves'            "$DIR_WEAPONS/Staves.txt"
rip_boe '/items/weapons/two-handed-axes'   "$DIR_WEAPONS/Two-Handed Axes.txt"
rip_boe '/items/weapons/two-handed-maces'  "$DIR_WEAPONS/Two-Handed Maces.txt"
rip_boe '/items/weapons/two-handed-swords' "$DIR_WEAPONS/Two-Handed Swords.txt"
rip_boe '/items/weapons/warglaives'        "$DIR_WEAPONS/Warglaives.txt"


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
