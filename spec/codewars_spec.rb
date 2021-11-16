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
end
