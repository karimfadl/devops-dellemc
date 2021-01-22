#!/bin/bash
sed -i 's/145/0,.1/g' bulletin-board-app/site.css
sed -i 's/98/0/g' bulletin-board-app/site.css
sed -i 's/41/0/g' bulletin-board-app/site.css
sed -i 's/rgb/rgba/g' bulletin-board-app/site.css
sed -i 's/380a66/366ec3/g' bulletin-board-app/site.css
sed -i 's/Board/Board Demo!/g' bulletin-board-app/index.html