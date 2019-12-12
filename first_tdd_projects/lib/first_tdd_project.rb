# my_unique

def my_unique(arr)
    new_arr = []
    arr.each do |ele|
        new_arr << ele unless new_arr.include?(ele)
    end
    new_arr
end

# Two sum
def two_sum(arr)
    new_arr = []

    (0...arr.length - 1).each do |i|
        (i + 1...arr.length).each do |j|
            new_arr << [i, j] if arr[i] + arr[j] == 0
        end
    end

    new_arr
end

#My Transpose

def my_transpose(arr)
    length = arr.length
    new_arr = Array.new(length) { Array.new }

    arr.flatten.each_with_index do |ele, i|
        new_arr[i % length] << ele 
    end
    new_arr
end

# Stock Picker

def stock_picker(arr)
    profitable = []
    longest = 0

    (0...arr.length - 1).each do |i|
        (i + 1...arr.length).each do |j|
            if arr[j] - arr[i] > longest
                longest = arr[j] - arr[i]
                profitable = [i, j]
            end
        end
    end

    profitable
end

# Tower of Hanoi

class TowerOfHanoi
    attr_accessor :stacks

    def initialize
        @stacks = Array.new(3) {Array.new}
        self.populate
    end

    def populate
        stacks[0] = [3, 2 ,1]
    end

    
end