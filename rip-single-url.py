#!/usr/bin/env python2

import bs4
import re
import requests
import sys

WOWDB_URL = 'http://www.wowdb.com'
ITEMS_RGX = re.compile(re.escape(WOWDB_URL) + r'/items/(\d+)(?:\-.)?')
A_SELECT  = 'table.listing-items > tbody > tr > td.col-name a.t'


def fetch_items(url_suffix, verbose=True):
    item_ids = []

    while True:
        full_url = WOWDB_URL + url_suffix
        request  = requests.get(full_url)
        temp_ids = []

        if request.status_code != 200:
            RuntimeError('TODO: Write better error messages')

        page_dom = bs4.BeautifulSoup(request.content, 'html.parser')
        a_elems  = page_dom.select(A_SELECT)

        for a_elem in a_elems:
            href  = a_elem['href']
            match = ITEMS_RGX.match(href)

            if match is None:
                continue

            temp_ids.append(match.group(1))

        if verbose:
            msg = 'Fetched {:d} items from "{}"\n'.format(len(temp_ids), \
                    full_url)
            sys.stderr.write(msg)

        item_ids.extend(temp_ids)

        def is_next(next_elem):
            return next_elem.get_text() == u'Next'

        next_elems = list(filter(is_next, page_dom.find_all('a')))

        if len(next_elems) < 1:
            break

        next_elem  = next_elems[0]
        url_suffix = next_elem['href']

    return item_ids


def main(argv):
    if len(argv) != 3:
        sys.stderr.write('Usage: python2 {} SUFFIX OUTFILE\n'.format(argv[0]))
        sys.exit(1)

    url_suffix = argv[1]
    tsm_group  = ','.join('i:' + item for item in fetch_items(url_suffix))

    with open(argv[2], 'w') as hdl:
        hdl.write(tsm_group + '\n')


if __name__ == '__main__':
    main(sys.argv)
