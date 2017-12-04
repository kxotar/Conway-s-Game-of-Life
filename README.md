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
    
The main class is NeighborHood, to verify if all the tests for Conway's Game of Life Rule are covered please refer to test_game_of_life.rb <br>

Test#1 :- neighborhood with one alive cell will die in the next generation <br>
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

Test#2 neighborhood with two alive cells as neighbors will stay alive in the next generation

