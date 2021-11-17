require_relative '../codewars'

RSpec.describe "sure pass" do
   context "count smileys" do
     it "count smileys" do
       expect(count_smileys([":-)"])).to eq 1
     end
   end
   context "find_it" do
     it "find_it" do
       expect(find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])).to eq 5
     end
   end
   context "round to 5" do
     it "round to 5" do
       expect(round_to_next_5(5)).to eq 5
       expect(round_to_next_5(6)).to eq 10
       expect(round_to_next_5(12)).to eq 15
     end
   end
   context "test sum digit" do
     it "test sum digit" do
       expect(sum_digits(10)).to eq 1
       expect(sum_digits(99)).to eq 18
       expect(sum_digits(-32)).to eq 5
     end
   end
end
