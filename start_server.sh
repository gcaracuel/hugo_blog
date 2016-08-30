#!/bin/bash
source_dir="/vagrant/blogsite"

hugo server --bind="0.0.0.0" --port=1300 --theme="hugo-theme-casper" --source=$source_dir --buildDrafts --watch --logFile="/tmp/blosite.log" >/dev/null 2>&1 < /dev/null &

# Now build the same files we are serving
hugo -s $source_dir -d public/
