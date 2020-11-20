def first_two_sum?(arr, target) #O(n^2)
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target
        end
    end
    false
end


arr = [0, 1, 5, 7]
p first_two_sum?(arr, 6) # => should be true
p first_two_sum?(arr, 10) # => should be false

arr = [0, 1, 5, 7]