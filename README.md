# flood-filler-VB6 ----
From Wikipedia https://en.wikipedia.org/wiki/Flood_fill:<BR>
Flood fill, also called seed fill, is a flooding algorithm that determines and alters the area connected to a given node in a multi-dimensional array with some matching attribute. It is used in the "bucket" fill tool of paint programs to fill connected, similarly-colored areas with a different color, and in games such as Go and Minesweeper for determining which pieces are cleared. A variant called boundary fill uses the same algorithms but is defined as the area connected to a given node that does not have a particular attribute.
<BR>
### init random maze (square black/white alias limit/free)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/flood%20fill%20maze%20start.png)
### end filling free square white with color yellow
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/flood%20fill%20maze%20end.png)
### start clicking on first arbitrary square white
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/1.png)
### step step until filling all square white with color yellow
#### note the rotation of two small square in the direction sequential: up, left, down, righ
#### the small square blue is the current state, the small square green is the possible next state
#### note also how the small green square (possible next state) always tends to go up, respecting the directions that have been imposed inside the recursive function, and if the box is black (obstacle) or yellow (box already colored) the code goes to the next direction imposed inside the recursive function (up, left, down, righ)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/2.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/3.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/4.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/5.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/6.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/7.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/8.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/9.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/10.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/11.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/12.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/13.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/14.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/15.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/17.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/18.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/19.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/20.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/21.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/22.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/23.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/24.png)
### far forward...
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/25.png)
### other steps...
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/26.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/27.png)
### end result
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/end.png)
<BR>
### Code for the recursion, uncomment the call to viewPosition() and put the breakpoints as shown in the figure for understanding the logic of the recursion, or comment it for matter of speed.
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/code1.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/code2.png)

# Another particular note
This recursive function limits the movement to the 4 main directions, up, left, down, righ, so when it encounters a black or yellow box the algorithm skips that box, if you had increased the movement to 8 directions for example up, up-left, left, down-left, down etc.. in practice if you also included the diagonals then the code would have skipped the boundaries of the black boxes and filled all the white boxes.<BR>This simple algorithm can be applied to any game that implies a maze, but if you have to apply it to a paint program to fill shapes it would not be very useful because the pixels to fill would be thousands and the stack used by recursion is not so capable of storing all the states of the pixels, in this case we use other algorithms that involve a virtual stack created in the heap to replace recursion.