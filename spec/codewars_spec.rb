require_relative '../codewars'

RSpec.describe "Tests for codewars" do
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
   context "test pairs" do
     it "test pairs" do
       expect(pairs([0,0,0,0])).to eq 2
       expect(pairs([1,2,3,4])).to eq 0
       expect(pairs([])).to eq 0
     end
   end

   context "Testing capitalize" do
     it "test capitalize" do
       expect(capitalize("abcdef")).to eq ['AbCdEf', 'aBcDeF']
       expect(capitalize("abcdef")).not_to eq [] or eq ''
       expect(capitalize("abcdef")).to be_a_kind_of Array
       expect(capitalize("codewars")).to eq ['CoDeWaRs', 'cOdEwArS']
       expect(capitalize("abracadabra")).to eq ['AbRaCaDaBrA', 'aBrAcAdAbRa']
     end
   end

   context "Testing isogram" do
     it "test isogram" do
        expect(is_isogram("Dermatoglyphics")).to be_truthy
        expect(is_isogram("isogram")).to be_truthy
        expect(is_isogram("aba")).to be_falsey
     end 
   end

   context "Testing Kebabize" do
     it "test kebabize" do
	expect(kebabize('myCamelCasedString')).to eq 'my-camel-cased-string'
     end
   end

   context "Testing find_uniq" do
     it "test find_uniq" do
	expect(find_uniq([ 1, 1, 1, 2, 1, 1 ])).to eq 2
     end
   end
end
