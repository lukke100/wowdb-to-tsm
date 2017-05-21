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
