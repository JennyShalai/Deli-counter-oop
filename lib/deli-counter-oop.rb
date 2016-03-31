class Line

  def initialize(array = nil)
    @array = array || Array.new
  end

  def line
    if @array.empty?
      puts "The line is currently empty."
    else
      foo = []
      @array.each_with_index {|element, index|
        foo.push( "#{index + 1}. #{element}")
      }
      puts "The line is currently: " + foo.join(" ")
    end
  end

  def take_a_number(customer)
    @array.push(customer)
    puts "Welcome, #{customer}. You are number #{@array.length} in line."
  end

  def now_serving
    if @array.empty?
      puts "There is nobody waiting to be served!"
    else 
      puts "Currently serving #{@array.first}."
      @array.shift
    end
  end

end