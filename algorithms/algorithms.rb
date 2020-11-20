
def my_min_1(list) # O(n^2)
    min = 0
    (0...list.length).each do |i|
        (i+1...list.length).each do |j|
            if list[i] < list[j] && list[i] <= min
                min = list[i]
            end
        end
    end
    min
end

def my_min_2(list) # O(n)
    min = 0
    (0...list.length).each do |i|
        min = list[i] if min > list[i]
    end
    min
end

def  largest_contiguous_subsum(list) #O(n^3)
    subs = []
    (0...list.length).each do |i|
        # subs << [list[i]]
        (i...list.length).each do |j|
            # subs << subs[-1] + [list[j]]
            subs << list[i..j]
        end
    end
    subs.map{|sub| sub.sum}.max #O(n^2)
end 

def  largest_contiguous_subsum_2(list) #O(n)
<<<<<<< HEAD
    current_sum = list.first
    super_sum = current_sum

    list.each_with_index do |ele, i|
        if i != 0
            current_sum += list[i]
            if current_sum < list[i]
                current_sum = list[i]
            end
            if super_sum < current_sum
                super_sum = current_sum
            end
=======
    sum = list.first
    super_max = sum
    p list
    p "Sum is #{sum}, Current Element is #{list[0]}"
    list.each_with_index do |ele, i|
        if i != 0
            sum += list[i]
            p "Sum is #{sum}, Current Element is #{list[i]}"
            sum = list[i] if sum < list[i]
            super_max = sum if super_max < sum
            p "Super_max is #{super_max}, Sum is now #{sum}"
            puts
>>>>>>> ce7741d7759ed3904e036d569c7747a239f9a05e
        end
    end
    super_sum
end 
 list = [-1, -2, -7]
 list_2 = [4,2,5,6, -1, 1,2,3]
<<<<<<< HEAD
 list_3 = [1,2,3,4,5,-100   , 1, 17, -50, 100]
=======
 list_3 = [1,2,3,4,5,-100, 1, 17, -50, 100]

 list_3_logic = [15, -100 , 18, -50, 100]
>>>>>>> ce7741d7759ed3904e036d569c7747a239f9a05e
#  -5
#  -1

# p largest_contiguous_subsum(list)
# p largest_contiguous_subsum_2(list)
# puts
# p largest_contiguous_subsum(list_2)
# p largest_contiguous_subsum_2(list_2)
# puts
# p largest_contiguous_subsum(list_3)
p largest_contiguous_subsum_2(list_3)