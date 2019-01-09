#!/bin/bash

while read repo; do
  curl -s -X GET \
    -H "Authorization: token $(cat /Users/anc/.git-token_branch-protector)" \
    https://api.github.com/repos/ioppublishing/$repo/pulls \
  | /usr/local/bin/jq '.[].html_url'
done </Users/anc/code/AndrewCsoka/pull_request_notifier/repolist.txt
