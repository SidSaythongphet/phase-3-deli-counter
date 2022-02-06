katz_deli = []

def line arr
    queue = arr.map.with_index { |name, index| " #{ index + 1 }. #{ name }" }.join
    if arr.length == 0 then puts "The line is currently empty."
    else puts "The line is currently:#{ queue }"
    end
end


def take_a_number arr, customer 
    arr << customer
    puts "Welcome, #{ customer }. You are number #{ arr.length } in line."
end 


def now_serving arr
    if !arr[0] then puts "There is nobody waiting to be served!"
    else puts "Currently serving #{ arr[0] }."
    end
    arr.shift
end
    
line katz_deli
now_serving katz_deli
take_a_number(katz_deli, "Ada")
take_a_number(katz_deli, "Grace")
    
line katz_deli
now_serving katz_deli