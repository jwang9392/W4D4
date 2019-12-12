require "first_tdd_project"
require "Rspec"

describe "#my_unique" do
    
    subject(:arr) { [1, 2, 1, 3, 3]}
    
    context "duplicate elements in array" do
        it "removes duplicates" do
            expect(my_unique(arr)).to eq([1, 2, 3])
        end
    end

    context "elements in array are already unique" do
        it "returns the same elements in a new array" do
            expect(my_unique([1, 2, 3])).to eq([1, 2, 3])
        end
    end

    context "input array is empty" do
        it "it returns an empty array" do
            expect(my_unique([])).to eq([])
        end
    end

end

describe "#two_sum" do
    
    let(:arr) { [-1, 0, 2, -2, 1] }

    context "input array is empty" do
        it "it returns an empty array" do
            expect(two_sum([])).to eq([])
        end
    end    

    context "no two elements sum to zero" do
        it "returns an empty array" do
            expect(two_sum([-4, 2, -3, 5])).to eq([])
        end
    end

    context "two elements sum to zero" do
        it "returns pair of indices within subarrays" do
            expect(two_sum(arr)).to eq([[0, 4], [2, 3]])
            expect(two_sum(arr)).not_to eq([[2, 3], [0, 4]])
        end
    end
end

describe "#my_transpose" do

    let(:arr) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ] }

    context "correct" do
        it "transposes rows to columns and columns to rows" do
            expect(my_transpose(arr)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end

    context "input array is empty" do
        it "it returns an empty array" do
            expect(my_transpose([])).to eq([])
        end
    end

    context "input array has one element" do
        it "it returns 2D array with input array as element" do
            expect(my_transpose([1])).to eq([ [1] ])
        end
    end

end


describe "#stock_picker" do
    
    let(:arr) { [20, 15, 25, 30, 10, 50, 0] }

    context "input array is empty" do
        it "it returns an empty array" do
            expect(stock_picker([])).to eq([])
        end
    end

    context "elements in input array progressively get smaller" do
        it "it returns an empty array" do
            expect(stock_picker([ 50, 40, 25, 2 ])).to eq([])
        end
    end

    context "given the stock prices" do
        it "return indices of profitable days" do
            expect(stock_picker(arr)).to eq([4, 5])
        end
    end
end



describe TowerOfHanoi do
    subject(:tower_of_hanoi) { TowerOfHanoi.new }
    
    describe "#initialize" do
        it "sets 3 arrays" do
            expect(tower_of_hanoi.stacks.length).to eq(3)
        end
        
        # checks that first array @stacks[0] == [3, 2, 1]
        it "fills first array" do
            expect(tower_of_hanoi.stacks[0]).to eq([3, 2, 1])
        end
        
        it "checks other arrays to be empty" do 
            expect(tower_of_hanoi.stacks[1..-1].all?{ |arr| arr.empty?}).to be true
        end
    end
    
    describe "#move" do
    
        context "user picks up a disc" do
            it "must pick up the top disc of the stack" do
                
            end
        end
        
    end
end


# [[d3, d2, d1] [d1] [d2]]
#   1        2  3 