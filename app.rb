require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')

get ('/') do
  erb(:sides)
end

get ('/triangle_type') do
  @side1 = params.fetch('side1').to_f()
  @side2 = params.fetch('side2').to_f()
  @side3 = params.fetch('side3').to_f()
  @shape = Triangle.new(@side1, @side2, @side3)
  @result = @shape.type()

  erb(:triangle_type)
end
