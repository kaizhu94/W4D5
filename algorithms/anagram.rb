

def first_anagram? (str_1, str_2) #o(n!)
   arr = str_1.split("").permutation.to_a.include?(str_2.split(""))
end 

def second_anagram?(str_1, str_2) #o(n^2)
    arr = str_2.split("") #o(n)
    str_1.each_char do |char_1| #o(n)
        index = arr.index(char_1) #o(n)
        return false if index == nil
        arr.delete_at(index) #o(n)
    end
    arr.length == 0
end

def third_anagram?(str_1, str_2) # o(nlogn) sort use quicksort
    str_1.split("").sort == str_2.split("").sort
end

def fourth_anagram?(str_1, str_2) # O(n)
    return false if str_1.length != str_2.length
    hash_1 = Hash.new(0)
    (0...str_1.length).each do |i|
        hash_1[str_1[i]] += 1
    end
    str_2.each_char do |char|
        hash_1[char] -= 1
    end
    hash_1.all?{|k, v| v == 0}
end


p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true


p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true