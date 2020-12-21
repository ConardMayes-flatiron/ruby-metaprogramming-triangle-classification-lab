require "pry"

class Triangle
  # write code here

# # this is the fill in your own accesssors. just in case I want to try to make this work
#   def initialize(attributes)
#     attributes.each do |key,value|
#       self.class.attr_accessor(key)
#       self.send(("#{key}="),value)
#     end
#   end

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def is_triangle?
    if @a > 0 && @b > 0 && @c > 0
      ((@a + @b) > @c) && ((@a + @c) > @b) && ((@b + @c) > @a)
    end
  end

  def num_equal_sides
    equal_count =[]

      equal_count << (@a == @b)
      equal_count << (@c == @b)
      equal_count << (@c == @a)

    equal_count.count(true) 
  end


  def kind
    if self.is_triangle?
      
      # binding.pry


      if self.num_equal_sides == 0
        return :scalene
      elsif self.num_equal_sides == 1
        return :isosceles
      elsif self.num_equal_sides == 3
        return :equilateral
      end

    else
      raise TriangleError
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    end
  end


  class TriangleError < StandardError
    def message
      "Hey! That's illegal!"
    end
  end







end
