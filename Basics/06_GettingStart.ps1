$x = 30

if($x -le 20){
   write-host("This is if statement")
}else {
   write-host("This is else statement")
}


switch(3){
    1 {"One"}
    2 {"Two"}
    3 {"Three"; break }
    4 {"Four"}
    3 {"Three Again"}
 }

 switch(4,2){
    1 {"One"}
    2 {"Two"}
    3 {"Three"; break }
    4 {"Four"}
    3 {"Three Again"}
 }
 