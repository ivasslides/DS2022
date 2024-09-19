
#!/bin/bash

#little brain will change dirs, go from my-work to DS2022 to people
cd ../people

#look for this file in each dir
target_file="README.md"

#loop through each dir and spit out first line of the file
for dir in $(find . -type d); do
  if [ -f "$dir/$target_file" ]; then
    name=`head -n 1 "$dir/$target_file"`;
    echo $name
  fi 
done
