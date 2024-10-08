# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  if a == b && b == c
    if a == 0
      raise TriangleError, "A triangle with no sides is not a triangle."
    end
    return :equilateral
  elsif a == b || b == c || a == c
    if a < 0 || b < 0 || c < 0
      raise TriangleError, "A triangle with negative sides is not a triangle."
    end
    if a + b <= c || a + c <= b || b + c <= a
      raise TriangleError, "A triangle with sides that do not form a triangle is not a triangle."
    end
    return :isosceles
  else
    if a < 0 || b < 0 || c < 0
      raise TriangleError, "A triangle with negative sides is not a triangle."
    end
    if a + b <= c || a + c <= b || b + c <= a
      raise TriangleError, "A triangle with sides that do not form a triangle is not a triangle."
    end
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
