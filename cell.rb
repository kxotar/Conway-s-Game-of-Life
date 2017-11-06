require_relative 'location'
class Cell
  attr_reader :location
  def initialize(location)
    @alive = true
    @location= location
  end
  def at?(location)
    @location ==location
  end

  def alive?
    @alive == true
  end
  def die
    @alive= false
  end
=begin
  def center?
    (@x== 0 and @y==0)
  end
  def location
    Location.for(@x,@y)
  end
=end

  def dead?
    !alive?
  end
  def born
    @alive = true
  end

end