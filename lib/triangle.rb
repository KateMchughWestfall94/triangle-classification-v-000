class Triangle
  attr_accessor :a, :b, :c

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
    end
  def kind
    if self.each{|side| side <= 0} || (a + b <= c) || (b + c <= a ) || (a + c <= b)
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif (a == b && a != c) || (a == c && a != b)
      :isosceles
    else
      :scalene
    end
  end
end


class TriangleError<StandardError
end
