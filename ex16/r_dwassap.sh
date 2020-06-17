export FT_LINE1=8
export FT_LINE2=16
cat /etc/passwd | sed '/^#/d' | cut -d':' -f1 | rev | sort -r | sed '1!n;d' | awk 'NR>= ENVIRON["FT_LINE1"] && NR<= ENVIRON["FT_LINE2"]' | paste -s -d"," - | sed 's/,/, /g' | sed 's/$/./' 
