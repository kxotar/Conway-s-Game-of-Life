class NeighborHood
  def initialize
    @grid= []
  end

  def tick
    @grid.each do |cell|
      lonely_or_over_crowded_cells_die(cell)
      reproduction_of(cell)
    end
  end


=begin
  def alive_cells
    @grid.size
  end
=end

  def seed(cells)
    @grid= cells
  end

=begin
  def neighbors?(cell1, cell2)
    if cell1.center? or cell2.center?
      true
    end
  end
=end

  def number_of_neighbors_for(cell)
=begin
size = 0
#location = cell.location
size = 0
size = count_cell(cell, Location::NORTHWEST, size)
size = count_cell(cell, Location::NORTHEAST, size)
size = count_cell(cell, Location::SOUTHWEST, size)
size = count_cell(cell, Location::SOUTHEAST, size)
size = count_cell(cell, Location::NORTH, size)
size = count_cell(cell, Location::SOUTH, size)
size = count_cell(cell, Location::EAST, size)
size = count_cell(cell, Location::WEST, size)
size

case location
  when Location::CENTER
    size = calculate_neighbors_for_center_cell
  when Location::NORTHWEST
    size = calculate_neighbors_for_northwest_cell
  when Location::NORTHEAST
    size = calculate_neighbors_for_northeast_cell
  when Location::SOUTHWEST
    size = calculate_neighbors_for_southwest_cell
  when Location::SOUTHEAST
    size = calculate_neighbors_for_southeast_cell
  when Location::NORTH
    size = calculate_neighbors_for_north_cell
  when Location::SOUTH
    size = calculate_neighbors_for_south_cell
  when Location::EAST
    size = calculate_neighbors_for_east_cell
  when Location::WEST
    size = calculate_neighbors_for_west_cell
end
=end
    size = 0
    offsets = Location::OFFSETS
    offsets.each do |offset|
      size = count_cell(cell, offset, size)
    end
    size
  end


  private
  def count_cell(original, offset, size)
    neighbor = find_neighbor_cell(original, offset)
    size += 1 if neighbor
    size
  end
  def find_neighbor_cell(original, offset)
    neighbor_location = Location.add(original.location, offset)
    @grid.detect{|cell| cell.at?(neighbor_location)}
  end


=begin
  def find_cell(location)
    @grid.detect { |c| c.location == location }
  end

  def count_center_cell
    count_cell(find_cell(Location::CENTER))
  end

  def count_north_cell
    count_cell(find_cell(Location::NORTH))
  end

  def count_south_cell
    count_cell(find_cell(Location::SOUTH))
  end

  def count_east_cell
    count_cell(find_cell(Location::EAST))
  end

  def count_west_cell
    count_cell(find_cell(Location::WEST))
  end

  def count_northwest_cell
    count_cell(find_cell(Location::NORTHWEST))
  end

  def count_southwest_cell
    count_cell(find_cell(Location::SOUTHWEST))
  end

  def count_northeast_cell
    count_cell(find_cell(Location::NORTHEAST))
  end

  def count_southeast_cell
    count_cell(find_cell(Location::SOUTHEAST))
  end
=end

=begin
  def count_cell(predicate)
    if predicate
      1
    else
      0
    end
  end
=end
=begin

  def calculate_neighbors_for_center_cell
    size = 0
    size += count_north_cell
    size += count_south_cell
    size += count_east_cell
    size += count_west_cell
    size += count_northwest_cell
    size += count_northeast_cell
    size += count_southwest_cell
    size += count_southeast_cell
    size
  end

  def calculate_neighbors_for_northwest_cell
    size = 0
    size += count_north_cell
    size += count_west_cell
    size += count_center_cell
    size
  end

  def calculate_neighbors_for_northeast_cell
    size = 0
    size += count_north_cell
    size += count_east_cell
    size += count_center_cell
    size
  end

  def calculate_neighbors_for_southwest_cell
    size = 0
    size += count_south_cell
    size += count_west_cell
    size += count_center_cell
    size
  end

  def calculate_neighbors_for_southeast_cell
    size = 0
    size += count_south_cell
    size += count_east_cell
    size += count_center_cell
    size
  end

  def calculate_neighbors_for_north_cell
    size = 0
    size += count_northwest_cell
    size += count_center_cell
    size += count_northeast_cell
    size += count_west_cell
    size += count_east_cell
    size
  end

  def calculate_neighbors_for_south_cell
    size = 0
    size += count_southwest_cell
    size += count_center_cell
    size += count_southeast_cell
    size += count_west_cell
    size += count_east_cell
    size
  end

  def calculate_neighbors_for_east_cell
    size = 0
    size += count_northeast_cell
    size += count_center_cell
    size += count_southeast_cell
    size += count_north_cell
    size += count_south_cell
    size
  end

  def calculate_neighbors_for_west_cell
    size = 0
    size += count_northwest_cell
    size += count_center_cell
    size += count_southwest_cell
    size += count_north_cell
    size += count_south_cell
    size
  end
=end

  def lonely_or_over_crowded_cells_die(cell)
    neighbors_count = number_of_neighbors_for(cell)
    if neighbors_count != 2 or neighbors_count == 3
      cell.die
    end
  end


  def reproduction_of(cell)
    neighbors_count = number_of_neighbors_for(cell)
    if cell.dead? and neighbors_count == 3
      cell.born
    end
  end


=begin
  def count_center_cell
    count_cell(find_cell(Location::CENTER))
  end
=end


end