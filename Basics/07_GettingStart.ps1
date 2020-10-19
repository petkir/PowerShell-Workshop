#Format value
#Matches exact characters anywhere in the original value.
"book" -match "oo"

#Format   .
#Logic    Matches any single character.
"copy" -match "c..y"

#Format   [value]
#Logic    Matches at least one of the characters in the brackets.
"big" -match "b[iou]g"