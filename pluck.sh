#!/bin/bash
function get() {
  list=("$@")
  index=${list[0]}
  next=$(expr $index + 1)
  value=${list[$next]}
  echo "$value"
}
export -f get

while read line; do
  echo "$line" | xargs bash -c "get $1 \"\$@\"" _ {}
done

