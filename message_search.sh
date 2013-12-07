#!/bin/bash
echo "SELECT 
  DATETIME(date + 978307200, 'unixepoch', 'localtime') as Date, 
  h.id as \"Phone Number\", 
  text as Text 
FROM message m, handle h 
WHERE 
  h.rowid = m.handle_id AND 
  m.text LIKE '%$1%' 
ORDER BY m.rowid ASC"

