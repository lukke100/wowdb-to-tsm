#!/usr/bin/env python2

import os
import re
import sys

RGX_ITEMS = re.compile(r'(?:i\:\d+)(?:,i\:\d+)*')


def make_groups(folder):
    folder  = os.path.abspath(folder)
    items   = []

    for node in os.listdir(folder):
        node_path = os.sep.join([folder, node])

        if os.path.isdir(node_path):
            for node_item in make_groups(node_path):
                items.append(([node] + node_item[0], node_item[1]))

        else:
            with open(node_path) as handle:
                match = RGX_ITEMS.match(handle.read())

            if match is not None:
                items.append(([os.path.splitext(node)[0]], match.group()))

    return items


def main(argv):
    if len(argv) != 2:
        sys.stderr.write('Usage: python2 {} FOLDER\n'.format(argv[0]))
        sys.exit(1)

    folder = argv[1]
    groups = []

    for group in make_groups(folder):
        groups.append('group:{},{}'.format('`'.join(group[0]), group[1]))

    export = ','.join(groups)

    print(export)


if __name__ == '__main__':
    main(sys.argv)
