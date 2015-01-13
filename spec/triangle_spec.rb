require('rspec')
require('triangle')

describe('Triangle') do
  describe('#type') do
    it('will recognize an equilateral triangle') do
      shape = Triangle.new(6,6,6)
      expect(shape.type()).to(eq("an equilateral"))
    end
  end
  describe("#type") do
    it('will recognize an isosceles triangle') do
      shape = Triangle.new(6,6,2)
      expect(shape.type()).to(eq("an isosceles"))
    end
  end
  describe("#type") do
    it('will recognize an isosceles triangle') do
      shape = Triangle.new(2,2,3)
      expect(shape.type()).to(eq("an isosceles"))
    end
  end
  describe("#type") do
    it('will recognize a scalene triangle') do
      shape = Triangle.new(3,4,5)
      expect(shape.type()).to(eq("a scalene"))
    end
  end
  describe('#type') do
    it('will recognize when three lengths do not make a triangle') do
      shape = Triangle.new(7, 1, 1)
      expect(shape.type()).to(eq("not actually a"))
    end
  end
end
