katz_deli = []

def line(array)
    if array.size == 0
        puts "The line is currently empty."
    else 
        line_array = []
        counter = 1
        array.each do |person|
            line_array.push("#{counter}. #{person}")
            counter += 1
        end
        line_array.unshift("The line is currently:")
        puts line_array.join(" ")
    end
end

def take_a_number(array, name)
    # current_line = []
    if array.size == 0
        array.push(name)
        puts "Welcome, #{array[0]}. You are number 1 in line."
    elsif array.size != 0
        array.push(name)
        puts "Welcome, #{name}. You are number #{array.size} in line."
    end
end

def now_serving(array)
    if array.size == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{array[0]}."
        array.shift
    end
end
