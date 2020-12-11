def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli.length === 0
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{katz_deli.shift}."
    end
end

def line(katz_deli)

    
    if katz_deli.length === 0
        puts "The line is currently empty."
    else
        message = "The line is currently:"
        katz_deli.each_with_index do |customer, number|
            message += " #{number+1}. #{customer}"
          
        end
        puts "#{message}"
    end
    
end

# creating a block that performs each_with_index...
# on the katz_deli array and extracts both the...
# element and the elements index so you can print...
# their name and place in line based on the... 
# element and index.
# element = name, index = place in line