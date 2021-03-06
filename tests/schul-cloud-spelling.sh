#!/bin/bash

cd "`dirname \"$0\"`"
cd ..

if grep -riE 'schul(([^0-9a-zA-Z-])+|([[^:space:-]])*|[[:space:]]+-[[:space:]]*|[[:space:]]*-[[:space:]]+)cloud|shcul' | grep -vF '# fail'
then
  1>&2 echo -e "\e[1;31mMisspelling detected!\e[0m"
  exit 1
fi

1>&2 echo -e "\e[1;32mSchul-Cloud is spelled correctly all through the website.\e[0m"
exit 0
