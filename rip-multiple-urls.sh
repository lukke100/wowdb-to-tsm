#!/usr/bin/env sh
set -euo pipefail
IFS=$(printf '\n\t')

OUTPUT_DIR='output/'

if [ ! -d "$OUTPUT_DIR" ]
then
  mkdir "$OUTPUT_DIR"
fi

# Cloth Armor by Rarity
./rip-single-url.py '/items/armor/cloth?filter-quality=4'   'output/armor-cloth-uncommon.txt'
./rip-single-url.py '/items/armor/cloth?filter-quality=8'   'output/armor-cloth-rare.txt'
./rip-single-url.py '/items/armor/cloth?filter-quality=16'  'output/armor-cloth-epic.txt'
./rip-single-url.py '/items/armor/cloth?filter-quality=32'  'output/armor-cloth-legendary.txt'

# Leather Armor by Rarity
./rip-single-url.py '/items/armor/leather?filter-quality=4'  'output/armor-leather-uncommon.txt'
./rip-single-url.py '/items/armor/leather?filter-quality=8'  'output/armor-leather-rare.txt'
./rip-single-url.py '/items/armor/leather?filter-quality=16' 'output/armor-leather-epic.txt'
./rip-single-url.py '/items/armor/leather?filter-quality=32' 'output/armor-leather-legendary.txt'

# Mail Armor by Rarity
./rip-single-url.py '/items/armor/mail?filter-quality=4'     'output/armor-mail-uncommon.txt'
./rip-single-url.py '/items/armor/mail?filter-quality=8'     'output/armor-mail-rare.txt'
./rip-single-url.py '/items/armor/mail?filter-quality=16'    'output/armor-mail-epic.txt'
./rip-single-url.py '/items/armor/mail?filter-quality=32'    'output/armor-mail-legendary.txt'

# Plate Armor by Rarity
./rip-single-url.py '/items/armor/plate?filter-quality=4'    'output/armor-plate-uncommon.txt'
./rip-single-url.py '/items/armor/plate?filter-quality=8'    'output/armor-plate-rare.txt'
./rip-single-url.py '/items/armor/plate?filter-quality=16'   'output/armor-plate-epic.txt'
./rip-single-url.py '/items/armor/plate?filter-quality=32'   'output/armor-plate-legendary.txt'

# Cloaks by Rarity
./rip-single-url.py '/items/armor/cloaks?filter-quality=4'    'output/armor-cloaks-uncommon.txt'
./rip-single-url.py '/items/armor/cloaks?filter-quality=8'    'output/armor-cloaks-rare.txt'
./rip-single-url.py '/items/armor/cloaks?filter-quality=16'   'output/armor-cloaks-epic.txt'
./rip-single-url.py '/items/armor/cloaks?filter-quality=32'   'output/armor-cloaks-legendary.txt'

# Shirts by Rarity
./rip-single-url.py '/items/armor/shirts?filter-quality=4'    'output/armor-shirts-uncommon.txt'
./rip-single-url.py '/items/armor/shirts?filter-quality=8'    'output/armor-shirts-rare.txt'
./rip-single-url.py '/items/armor/shirts?filter-quality=16'   'output/armor-shirts-epic.txt'
./rip-single-url.py '/items/armor/shirts?filter-quality=32'   'output/armor-shirts-legendary.txt'

# Crafting Recipes
./rip-single-url.py '/items/recipes/alchemy'                 'output/recipes-alchemy.txt'
./rip-single-url.py '/items/recipes/blacksmithing'           'output/recipes-blacksmithing.txt'
./rip-single-url.py '/items/recipes/cooking'                 'output/recipes-cooking.txt'
./rip-single-url.py '/items/recipes/enchanting'              'output/recipes-enchanting.txt'
./rip-single-url.py '/items/recipes/engineering'             'output/recipes-engineering.txt'
./rip-single-url.py '/items/recipes/first-aid'               'output/recipes-first-aid.txt'
./rip-single-url.py '/items/recipes/inscription'             'output/recipes-inscription.txt'
./rip-single-url.py '/items/recipes/jewelcrafting'           'output/recipes-jewelcrafting.txt'
./rip-single-url.py '/items/recipes/leatherworking'          'output/recipes-leatherworking.txt'
./rip-single-url.py '/items/recipes/tailoring'               'output/recipes-tailoring.txt'
