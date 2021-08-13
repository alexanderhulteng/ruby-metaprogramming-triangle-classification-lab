class Triangle
  attr_accessor :side_1, :side_2, :side_3
  @@sides = []
  
  
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3

    @@sides = [side_1, side_2, side_3]
    @@sides.sort!

   


  end

  def kind
    if @@sides.any?{|k| k <= 0} || ((@@sides[0] + @@sides[1]) <= @@sides[2])
      raise TriangleError
    elsif side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
      :isosceles
    else
      :scalene
    end


  end

  def verify


    raise TriangleError


  end

  class TriangleError < StandardError
    
  end
end
