#!/bin/bash
echo "Answer for get 'desktop' file"
echo -n "what is application name: "
read Name
echo -n "Give it's discription: "
read Comment
echo -n "Give the full path of execution: "
read Exec
echo -n "Give the full path of icon: "
read Icon
echo -n "Does this application need terminal execution (yes/no)?: "
read Terminal
if [ "$Terminal" = "yes" ]; then
	Terminal="true"
else 
	Terminal="false"
fi

echo -n "Give app's categories semicolon seperated: "
read Categories

cat > $Name.desktop <<EOL
[Desktop Entry]
Name=$Name
Comment=$Comment
Exec=$Exec
Icon=$Icon
Terminal=$Terminal
Type=Application
Categories=$Categories;
EOL

echo "'$Name.desktop' file created with given information"
echo "'mv ./$Name.desktop ~/.local/share/applications/$Name.desktop' enter this to available in current user"

