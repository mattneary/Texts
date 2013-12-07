#!/usr/local/bin/fish

set sms_db texts.sqlite 
function texts
  echo $argv ";" | sqlite3 $sms_db | sed 's/\|/" "/g' | sed 's/^/"/g' |  sed 's/$/"/g' 
end

function textsq
  texts (./message_search.sh $argv)
end
function textsp
  texts (./person_search.sh $argv)
end

