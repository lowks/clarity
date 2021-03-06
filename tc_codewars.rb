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

   def test_kebabize
    assert_equal(kebabize('myCamelCasedString'), 'my-camel-cased-string')
    assert_equal(kebabize('myCamelHas3Humps'), 'my-camel-has-humps')
   end

   def test_autocomplete
      dictionary=[ 'abnormal',
      'arm-wrestling',
      'absolute',
      'airplane',
      'airport',
      'amazing',
      'apple',
      'ball' ]
      assert_equal(autocomplete('ai', dictionary), ['airplane','airport'])
      assert_equal(autocomplete('a', dictionary), ['abnormal','arm-wrestling','absolute','airplane','airport'])
  end

  def test_string_transformer
      assert_equal(string_transformer('Example   string'), 'STRING   eXAMPLE')
  end

  def test_up_array
   assert_equal(up_array([2,3,9]), [2,4,0])
   assert_equal(up_array([4,3,2,5]), [4,3,2,6])
   assert_equal(up_array([1,-9]), nil)
  end

  def test_find_uniq
   assert_equal(find_uniq([1,1,1,1,0]), 0)
   assert_equal(find_uniq([ 1, 1, 1, 2, 1, 1 ]), 2);
   assert_equal(find_uniq([ 0, 0, 0.55, 0, 0 ]), 0.55);
  end

  def test_count_adjacent_pairs
   assert_equal(count_adjacent_pairs(''), 0)
   assert_equal(count_adjacent_pairs('orange Orange kiwi pineapple apple'), 1)
   assert_equal(count_adjacent_pairs('banana banana banana'), 1)
   assert_equal(count_adjacent_pairs('banana banana banana terracotta banana terracotta terracotta pie!'), 2)
   assert_equal(count_adjacent_pairs('pineapple apple'), 0)
   assert_equal(count_adjacent_pairs('FLOat flOat ord Ord'), 2)
  end

  def test_string_breakers
   assert_equal(string_breakers(5, 'This is an example string'), "Thisi"+"\n"+"sanex"+"\n"+"ample"+"\n"+"strin"+"\n"+"g") 
  end

  def test_capitalize_other
   assert_equal(capitalize_other("abcdef",[1,2,5]),'aBCdeF')
   assert_equal(capitalize_other("abcdef",[1,2,5,100]),'aBCdeF',)
   assert_equal(capitalize_other("codewars",[1,3,5,50]),'cOdEwArs')
   assert_equal(capitalize_other("abracadabra",[2,6,9,10]),'abRacaDabRA')
   assert_equal(capitalize_other("codewarriors",[5]),'codewArriors')
   assert_equal(capitalize_other("indexinglessons",[0]),'Indexinglessons')
  end

  def test_reverse_alternate
   assert_equal(reverse_alternate("Did it work?"), "Did ti work?")
   assert_equal(reverse_alternate("I really hope it works this time..."), "I yllaer hope ti works siht time...")
   assert_equal(reverse_alternate("Reverse this string, please!"), "Reverse siht string, !esaelp")
   assert_equal(reverse_alternate("Have a beer"), "Have a beer")
   assert_equal(reverse_alternate("UA5n19 18dHWa7.C3GgFl e2lZJ3WgJq VFqmmA!5 d8qLwVY4thUTJzK 8iyc1Zyt?Qg2 bcpturRfl?vRez3r qsDia9QXJU4AUStv dUw7CDRD18. Dw87F qYyhPV GMcT,EwSCL8V rrgE!x85ye5,,RhG jE ,7jkO cnPT5VcEfGf5 mU2cq5SCIUyVUX! 6NJmFfjIDk EEP4o mdyZ3?LWkLPH"), "UA5n19 lFgG3C.7aWHd81 e2lZJ3WgJq 5!AmmqFV d8qLwVY4thUTJzK 2gQ?tyZ1cyi8 bcpturRfl?vRez3r vtSUA4UJXQ9aiDsq dUw7CDRD18. F78wD qYyhPV V8LCSwE,TcMG rrgE!x85ye5,,RhG Ej ,7jkO 5fGfEcV5TPnc mU2cq5SCIUyVUX! kDIjfFmJN6 EEP4o HPLkWL?3Zydm")
   assert_equal(reverse_alternate(""), "")
  end

  def test_more_zeroes
   assert_equal(more_zeros('abcde'),['a','b','d'])
   assert_equal(more_zeros('Great job!'),['a', ' ', 'b', '!'])
   assert_equal(more_zeros('DIGEST'),['D','I','E','T'])
   assert_equal(more_zeros('abcdeabcde'),['a','b','d'],'Should not return duplicates values')
  end

#   def test_encypt_this
#    example_tests = {
#       "" => "",
#       "A wise old owl lived in an oak" =>  "65 119esi 111dl 111lw 108dvei 105n 97n 111ka",
#       "The more he saw the less he spoke" =>  "84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp",
#       "The less he spoke the more he heard" =>  "84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare",
#       "Why can we not all be like that wise old bird" =>  "87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri",
#       "Thank you Piotr for all your help" =>  "84kanh 121uo 80roti 102ro 97ll 121ruo 104ple",
#     }
#     example_tests.each do |input, encryted| 
#       it "Encrypting '#{input}'" do
#         expect(encrypt_this(input)).to eq(encryted) 
#       end
#     end
#   end

  def test_permute_a_palindrom
   assert_equal(permute_a_palindrome("a"), true)
   assert_equal(permute_a_palindrome("aa"), true)
   assert_equal(permute_a_palindrome("baa"), true)
   assert_equal(permute_a_palindrome("aab"), true)
   assert_equal(permute_a_palindrome("baabcd"), false)
   assert_equal(permute_a_palindrome("racecars"), false)
   assert_equal(permute_a_palindrome("abcdefghba"), false)
   assert_equal(permute_a_palindrome(""), true)
 end

 def test_make_sentence
   assert_equal(make_sentence(['hello', 'world']), 'hello world.')
 end

 def test_encode_decode
   assert_equal(encode('hello'), 'h2ll4')
   assert_equal(encode('How are you today?'), 'H4w 1r2 y45 t4d1y?')
   assert_equal(encode('This is an encoding test.'), 'Th3s 3s 1n 2nc4d3ng t2st.')
   assert_equal(decode('h2ll4'), 'hello')
 end

 def test_letter_count
   assert_equal(letter_count('codewars'), {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
   assert_equal(letter_count('activity'), {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1})
   assert_equal(letter_count('arithmetics'), {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})
 end

 def test_sum_dig_pow
   assert_equal( sum_dig_pow(1, 10), [1, 2, 3, 4, 5, 6, 7, 8, 9])
   assert_equal(sum_dig_pow(1, 100), [1, 2, 3, 4, 5, 6, 7, 8, 9, 89])
   assert_equal(sum_dig_pow(10, 100),  [89])
   assert_equal(sum_dig_pow(90, 100), [])
   assert_equal(sum_dig_pow(90, 150), [135])
   assert_equal(sum_dig_pow(50, 150), [89, 135])
   assert_equal(sum_dig_pow(10, 150), [89, 135])
 end

 def test_data_reverse
   assert_equal(data_reverse(
  [1,1,1,1,1,1,1,1, 0,0,0,0,0,0,0,0, 0,0,0,0,1,1,1,1, 1,0,1,0,1,0,1,0] ),
  [1,0,1,0,1,0,1,0, 0,0,0,0,1,1,1,1, 0,0,0,0,0,0,0,0, 1,1,1,1,1,1,1,1] )

   assert_equal(data_reverse(
  [0,0,1,1,0,1,1,0, 0,0,1,0,1,0,0,1] ),
  [0,0,1,0,1,0,0,1, 0,0,1,1,0,1,1,0] )
end

def test_numbers_format
   assert_equal(number_format(100000), "100,000")
   assert_equal(number_format(5678545), "5,678,545")
   assert_equal(number_format(-420902), "-420,902")
   assert_equal(number_format(-3), "-3")
   assert_equal(number_format(-1003), "-1,003")
end

def test_numbers_with_digit_inside
   assert_equal(numbers_with_digit_inside(5, 6), [0, 0, 0])
   assert_equal(numbers_with_digit_inside(7, 6), [1, 6, 6])
   assert_equal(numbers_with_digit_inside(11, 1), [3, 22, 110])
   assert_equal(numbers_with_digit_inside(20, 0), [2, 30, 200])
   assert_equal(numbers_with_digit_inside(44, 4), [9, 286, 5955146588160])
end

def test_domain_name
   assert_equal(domain_name("http://google.com"), "google")
   assert_equal(domain_name("http://google.co.jp"), "google")
   assert_equal(domain_name("www.xakep.ru"), "xakep")
   assert_equal(domain_name("https://youtube.com"), "youtube")
end

def test_dirReduc
   a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
   assert_equal(dirReduc(a), ["WEST"])
   u=["NORTH", "WEST", "SOUTH", "EAST"]
   assert_equal(dirReduc(u), ["NORTH", "WEST", "SOUTH", "EAST"])
end

def test_regex_password_validation
   # assert_equal((regex=~'fjd3IR9')==0, true)
   # assert_equal((regex=~'ghdfj32')==0, false)
   # assert_equal((regex=~'DSJKHD23')==0, false)
   # assert_equal((regex=~'dsF43')==0, false)
   # assert_equal((regex=~'4fdg5Fj3')==0, true)
   # assert_equal((regex=~'DHSJdhjsU')==0, false)
   # assert_equal((regex=~'fjd3IR9.;')==0, false)
   # assert_equal((regex=~'fjd3  IR9')==0, false)
   # assert_equal((regex=~'djI38D55')==0, true)
   # assert_equal((regex=~'a2.d412')==0, false)
   # assert_equal((regex=~'JHD5FJ53')==0, false)
   # assert_equal((regex=~'!fdjn345')==0, false)
   # assert_equal((regex=~'jfkdfj3j')==0, false)
   # assert_equal((regex=~'123')==0, false)
   # assert_equal((regex=~'abc')==0, false)
   # assert_equal((regex=~'123abcABC')==0, true)
   # assert_equal((regex=~'ABC123abc')==0, true)
   # assert_equal((regex=~'Password123')==0, true)

   assert_equal((password_validation('fjd3IR9'))==0, true)
   assert_equal((password_validation('ghdfj32'))==0, false)
   assert_equal((password_validation('DSJKHD23'))==0, false)
   assert_equal((password_validation('dsF43'))==0, false)
   assert_equal((password_validation('4fdg5Fj3'))==0, true)
   assert_equal((password_validation('DHSJdhjsU'))==0, false)
   assert_equal((password_validation('fjd3IR9.;'))==0, false)
   assert_equal((password_validation('fjd3  IR9'))==0, false)
   assert_equal((password_validation('djI38D55'))==0, true)
   assert_equal((password_validation('a2.d412'))==0, false)
   assert_equal((password_validation('JHD5FJ53'))==0, false)
   assert_equal((password_validation('!fdjn345'))==0, false)
   assert_equal((password_validation('jfkdfj3j'))==0, false)
   assert_equal((password_validation('123'))==0, false)
   assert_equal((password_validation('abc'))==0, false)
   assert_equal((password_validation('123abcABC'))==0, true)
   assert_equal((password_validation('ABC123abc'))==0, true)
   assert_equal((password_validation('Password123'))==0, true)
end
def test_sortme
   assert_equal(sortme(["web-1305","site-1305","web-1304","site-1304"]), ["site-1304", "web-1304", "site-1305", "web-1305"])
   assert_equal(sortme(['aeb-1305', 'site-1305', 'play-1215', 'web-1304', 'site-1304', 'beb-1305']), ["play-1215", "site-1304", "web-1304", "aeb-1305", "beb-1305", "site-1305"])
   assert_equal(sortme([]), [])
   assert_equal(sortme(['aeb-1305', 'aeb-1305']), ['aeb-1305', 'aeb-1305'])
end

def test_to_nato
   assert_equal(to_nato('If you can read'), "India Foxtrot Yankee Oscar Uniform Charlie Alfa November Romeo Echo Alfa Delta")
   assert_equal(to_nato('Did not see that coming'), "Delta India Delta November Oscar Tango Sierra Echo Echo Tango Hotel Alfa Tango Charlie Oscar Mike India November Golf")
end
end
