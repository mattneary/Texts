#!/bin/bash
echo "SELECT
  DATETIME(date + 978307200, 'unixepoch', 'localtime') as Date, 
  h.id as \"Phone Number\", 
  text as Text, 
  is_from_me as Sent FROM message m, 
  handle h 
WHERE 
  h.rowid = m.handle_id AND 
  h.id='$1' 
ORDER BY m.rowid ASC"

