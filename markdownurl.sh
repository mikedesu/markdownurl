#!/opt/local/bin/bash
TESTVAR=$(wget -qO- $1 | perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si')
echo "[$TESTVAR]($1)"

