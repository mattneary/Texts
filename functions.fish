#!/usr/local/bin/fish

set sms_db texts.sqlite 
function texts
  echo $argv ";" | sqlite3 $sms_db | sed 's/\|/" "/g' | sed 's/^/"/g' |  sed 's/$/"/g' 
end

