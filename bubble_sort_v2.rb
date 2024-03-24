numbers = 1.upto(6).map {|i| rand(1..20)}

def bubble_sort(input)

    before = input

    # `.dup` method will ensure operation below (i.e. updating `after`) wouldn't have effect on `before`
    after = before.dup

    0.upto(after.length - 2).each do |index|
        current_number = after[index]
        next_number = after[index + 1]
    
        if current_number > next_number
            after[index] = next_number
            after[index + 1] = current_number
        else
            next
        end
    end

    # if `after` is same as `before`, the numbers are properly sorted
    (after == before)? after : bubble_sort(after)

end

p "Original input => #{numbers}"
p "Sorted ouput   => #{bubble_sort(numbers)}"