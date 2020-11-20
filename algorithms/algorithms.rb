
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

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_1(list)  # =>  -5
# p my_min_2(list)  # =>  -5


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
    max = list.first
    super_max = max

    list.each_with_index do |ele, i|
        if i != 0
            sum = max + list[i]
            if sum > max
                max = sum
            else
                # max = list[i]
            end
            if max > super_max
                super_max += max
                max = 0
            end
        end
    end
    super_max
end 
 list = [-1, -2, -7]
 list_2 = [4,2,5,6, -1, 1,2,3]
 list_3 = [1,2,3,4,5,-100, 1, 17, -50, 100]
#  -5
#  -1

#  p largest_contiguous_subsum(list)
#  p largest_contiguous_subsum(list_2)
 p largest_contiguous_subsum_2(list)
 p largest_contiguous_subsum_2(list_2)
 p largest_contiguous_subsum_2(list_3)