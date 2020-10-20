$array1 = @("item1", "item2", "item3")
for($i = 0; $i -lt $array1.length; $i++){ $array1[$i] }

$counter =0
while($counter -lt $array1.length){
    $array1[$counter]
    $counter += 1
 }