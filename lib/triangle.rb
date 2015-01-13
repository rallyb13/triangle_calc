class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:type) do
    if @side1.+(@side2).<=(@side3)
      "not actually a"
    elsif @side1.+(@side3).<=(@side2)
      "not actually a"
    elsif @side2.+(@side3).<=(@side1)
      "not actually a"
    elsif @side1 == @side2 && @side2 == @side3
      "an equilateral"
    elsif @side1 == @side2 && @side1 != @side3
      "an isosceles"
    elsif @side1 == @side3 && @side1 != @side2
      "an isosceles"
    elsif @side2 == @side3 && @side2 != @side1
      "an isosceles"
    else
      "a scalene"
    end
  end

end
