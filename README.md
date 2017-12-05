# Conway-s-Game-of-Life
Ruby Implementation of Conway's Game of Life <br>

As the Implementation is done on Basis of test driven development, the entire app contain three seprate test stubs namely <br>
1. test_cell.rb for Cell class <br>
2. test_location.rb for Location class <br>
3. test_game_of_life.rb for NeighborHood class <br>

to run any test file execute the following command <br>
ruby <test_stub_name.rb> <br>
For Example :- <br>
  for test_cell.rb run :- <br>
    ruby test_cell.rb <br>
<b>To run all the test cases run :- <br> ruby test_game_of_life.rb</b>

The main class is NeighborHood, to verify if all the tests for Conway's Game of Life Rule are covered please refer to test_game_of_life.rb <br>

Test#1 :- neighborhood with one alive cell will die in the next generation <br>
To validate the Rule 1 of Game of Life <br>
Let's consider a 3X3 matrix and seed the matrix with two alive cells on in CENTER i.e. [0, 0] and other in NORTH i.e. [0, 1] based on following pattern <br>
<table>
<tr>
<td>
x-1, y+1
</td>
<td>
x,y+1
</td>
<td>
x+1,y+1
</td>
</tr>
<tr>
<td>
x-1,y
</td>
<td>
x,y
</td>
<td>
x+1,y
</td>
</tr>

<tr>
<td>
x-1,y-1
</td>
<td>
x,y-1
</td>
<td>
x+1,y-1
</td>
</tr>
</table>
<br>
After the first Iteration cell at the Center will be dead as it only have one cell alive in neighbourhood, which our test case asserts.

Test#2 neighborhood with two alive cells as neighbors will stay alive in the next generation <br>
By using same matrix we used in previous test, we'll seed the board with three cells CENTER [0,0],NORTH [0,1] , SOUTH [0,-1]
Now after iteration one we'll be able to assert that if cell has 2 alive cells in neighbourhood, it will stay alive in next generation, as Neighbours for cell at CENTER ie. [0,0] have two neighbours, validates the Rule 2 of Game of Life.

Test#3 a cell with 4 alive cells will die of overcrowding <br>
To simulate this rule let's seed the board with four cells CENTER [0,0],NORTH [0,1] ,NORTHWEST [-1,1] ,  WEST [-1,0] , SOUTHWEST [-1,-1] <br>
The test will assert that the cell in CENTER ie. [0,0] won't servive to next generation, hence validates the Rule 3 of Game of Life

Test#4 a dead cell with three alive cells as neighbors will be born in the next generation <br>
validates the Rule 4 of Conways Game of Life
