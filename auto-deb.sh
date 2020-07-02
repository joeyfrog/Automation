#!/bin/bash
# Create X different .deb packages
# By joeyn@jfrog.com
if which equivs-build >/dev/null; then
  printf "How many deb packages?\n # "
  read END
  START=1
  for (( c=$START; c<=$END; c++ ))
  do
    printf "building package number $c\n"
    echo "Section: misc" > sourcefile
    echo "Priority: optional" >> sourcefile
    echo "Standards-Version: $c.0.0" >> sourcefile
    echo "Package: debiantest$c" >> sourcefile
    echo "Description: Hello world$c" >> sourcefile
    equivs-build sourcefile > /dev/null 2>&1
  done
printf "Script done.\n"
rm sourcefile
else
    echo "Please install equivs"
fi
