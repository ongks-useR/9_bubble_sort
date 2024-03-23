# input based on The Odin Project is [4,3,78,2,0,2]
# Here, I use `rand` function to generate 6 random numbers instead
numbers = (1..6).map {|i| rand(1..100)}

def bubble_sort(numbers)

    before = numbers
    after =[]

    before[1..].each_with_index do |current_number, index|
        if after.empty?
            prior_number = before[index]

            if current_number >= prior_number
                after.push(prior_number)
                after.push(current_number)
            else
                after.push(current_number)
                after.push(prior_number)
            end
        else
            prior_number = after.last

            if current_number >= prior_number
                after.push(current_number)
            else
                after[-1] = current_number
                after.push(prior_number)
            end
        end
    end
    
    (after != before)? bubble_sort(after) : after
  
end

p "Input  => #{numbers}"
p "Output => #{bubble_sort(numbers)}"