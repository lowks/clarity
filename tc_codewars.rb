require_relative "./codewars"
require "test/unit"

class CodeWarsTests < Test::Unit::TestCase
   def test_find_next_square
	assert_equal(find_next_square(121), 144, "Wrong output for 121")
	assert_equal(find_next_square(625), 676, "Wrong output for 625")
	assert_equal(find_next_square(319225), 320356, "Wrong output for 319225")
	assert_equal(find_next_square(15241383936), 15241630849, "Wrong output for 15241383936")
	assert_equal(find_next_square(155), -1, "Wrong output for 155")
	assert_equal(find_next_square(342786627), -1, "Wrong output for 342786627")
   end
   def test_find_it
	assert_equal(find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]), 5)
	assert_equal(find_it([1,1,2,-2,5,2,4,4,-1,-2,5]), -1)
	assert_equal(find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]), 5)
	assert_equal(find_it([10]), 10)
	assert_equal(find_it([1,1,1,1,1,1,10,1,1,1,1]), 10)
   end

   def test_names
    assert_equal(list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]), 'Bart, Lisa, Maggie, Homer & Marge',
"Must work with many names")
    assert_equal(list([{name: 'Bart'},{name: 'Lisa'}]), 'Bart & Lisa', 
"Must work with two name")
    assert_equal(list([{name: 'Bart'}]), 'Bart', "Wrong output for a single name")
   end

   def test_round_to_next_5
    assert_equal(round_to_next_5(0), 0)
    assert_equal(round_to_next_5(1), 5)
    assert_equal(round_to_next_5(5), 5)
    assert_equal(round_to_next_5(6), 10)
    assert_equal(round_to_next_5(12), 15)
    assert_equal(round_to_next_5(9), 10)
    assert_equal(round_to_next_5(16), 20)
    assert_equal(round_to_next_5(22), 25)
   end

   def test_count_smileys
    assert_equal(count_smileys([]), 0)
    assert_equal(count_smileys([":D",":~)",";~D",":)"]), 4)
    assert_equal(count_smileys([":)",":(",":D",":O",":;"]), 2)
    assert_equal(count_smileys([";]", ":[", ";*", ":$", ";-D"]), 1)
    assert_equal(count_smileys([";", ")", ";*", ":$", "8-D"]), 0) 
   end

   def test_sum_digits
    assert_equal(sum_digits(10), 1)
    assert_equal(sum_digits(99), 18)
    assert_equal(sum_digits(-32), 5)
   end

   def test_is_isogram
    assert_equal(is_isogram("Dermatoglyphics"), true )
    assert_equal(is_isogram("isogram"), true )
    assert_equal(is_isogram("aba"), false, "same chars may not be adjacent" )
    assert_equal(is_isogram("moOse"), false, "same chars may not be same case" )
    assert_equal(is_isogram("isIsogram"), false )
    assert_equal(is_isogram(""), true, "an empty string is a valid isogram" )
   end

   def test_capitalize
    assert_equal(capitalize("abcdef"),['AbCdEf', 'aBcDeF'])
    assert_equal(capitalize("codewars"),['CoDeWaRs', 'cOdEwArS'])
    assert_equal(capitalize("abracadabra"),['AbRaCaDaBrA', 'aBrAcAdAbRa'])
    assert_equal(capitalize("codewarriors"),['CoDeWaRrIoRs', 'cOdEwArRiOrS'])
    assert_equal(capitalize("indexinglessons"),['InDeXiNgLeSsOnS', 'iNdExInGlEsSoNs'])
    assert_equal(capitalize("codingisafunactivity"),['CoDiNgIsAfUnAcTiViTy', 'cOdInGiSaFuNaCtIvItY'])
   end
end
