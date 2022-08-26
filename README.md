# Flood Filler in VB6
From Wikipedia https://en.wikipedia.org/wiki/Flood_fill:<BR>
Flood fill, also called seed fill, is a flooding algorithm that determines and alters the area connected to a given node in a multi-dimensional array with some matching attribute. It is used in the "bucket" fill tool of paint programs to fill connected, similarly-colored areas with a different color, and in games such as Go and Minesweeper for determining which pieces are cleared. A variant called boundary fill uses the same algorithms but is defined as the area connected to a given node that does not have a particular attribute.
<BR>
### init random maze (square black/white alias limit/free)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/reset.png)
### end filling free square white with color yellow
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/93.png)
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
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/25.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/26.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/27.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/28.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/29.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/30.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/31.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/32.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/33.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/34.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/35.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/36.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/37.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/38.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/39.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/40.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/41.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/42.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/43.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/44.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/45.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/46.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/47.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/48.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/49.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/50.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/51.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/52.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/53.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/54.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/55.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/56.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/57.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/58.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/59.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/60.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/61.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/62.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/63.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/64.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/65.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/66.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/67.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/68.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/69.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/70.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/71.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/72.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/73.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/74.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/75.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/76.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/77.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/78.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/79.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/80.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/81.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/82.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/83.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/84.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/85.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/86.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/87.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/88.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/89.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/90.png)


### far forward...
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/91.png)
### other steps...
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/92.png)
### end result
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/93.png)
<BR>
### Code for the recursion, uncomment the call to viewPosition() and put the breakpoints as shown in the figure for understanding the logic of the recursion, or comment it for matter of speed.
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/code1.png)
![image](https://raw.githubusercontent.com/davidechiappetta/Recursive-flood-fill-with-4-directions-VB6/main/img/code2.png)

# Another particular note
This recursive function limits the movement to the 4 main directions, up, left, down, righ, so when it encounters a black or yellow box the algorithm skips that box, and continues to explore new free boxes white always within the confines of the 4 directions. If you had increased the movement to 8 directions for example up, up-left, left, down-left, down etc.. in practice if you also included the diagonals then the code would have climb over the boundaries of the black boxes and filled all the white boxes (inside and outside the limits of the black boxes).<BR>This simple algorithm can be applied to any game that implies a maze, but if you have to apply it to a paint program to fill shapes it would not be very useful because the pixels to fill would be thousands and the stack used by recursion is not so capable of storing all the states of the pixels, in this case we use other algorithms that involve a virtual stack created in the heap to replace recursion.