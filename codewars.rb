def find_next_square(sq)
  Math.sqrt(sq) % 1 != 0 ? -1 : (Integer.sqrt(sq) + 1)**2
end

def find_it(seq)
  seq.select {|x| seq.count(x) % 2 == 1 }.uniq.first
end

def list names
  if names.length == 1
    names[0][:name]
  elsif names.length > 2
    names.slice(0, names.length - 1).map {|x| x[:name] }.join(", ") + " & " + names[names.length - 1][:name]
  else
    names.map{|x| x[:name]}.join(" & ")
  end
end

def list_other names
  names.map(&:values).join(', ').gsub(/, (\w+)$/, " & \\1")
end

def round_to_next_5(n)
  ((n / 5) + ( n % 5 > 0? 1:0)) * 5 
end

def count_smileys(arr)
  count = 0
  arr.each {|x|
    al = x.split("")
    if al.length == 2
      ([":", ";"].include?al[0]) && ([")", "D"].include?al[1]) ? count +=1: count +=0
    else
      ([":", ";"].include? al[0]) && (["-","~"].include? al[1]) && ([")", "D"].include? al[2]) ? count +=1: count +=0
    end  
  }
  count
end

def sum_digits(number)
  number.abs.digits.reduce(0) { |acc, num| acc + num }
end

def is_isogram(string)
  string.downcase.chars.uniq.count { 
    |char| string.downcase.count(char) > 1 
  } == 0
end

def capitalize(s)
  [s.split("").map.with_index { |i, x| x % 2 == 0 ? i.upcase : i }.join(),
   s.split("").map.with_index { |i, x| x % 2 == 1 ? i.upcase : i }.join()]
 end

 def capitalize_other(s)
  result = s.gsub /.{1,2}/, &:capitalize
  [result, result.swapcase]
end

def kebabize(str)
  str.tr("0-9", "").split("")
  .map { |x| x.upcase == x ? "-" + x.downcase : x}.join().delete_prefix("-")
end

def autocomplete(input, dictionary)
  dictionary.select {|x|
    x.downcase.gsub(/[^0-9A-Za-z]/, '').start_with? input.downcase.gsub(/[^0-9A-Za-z]/, '').gsub(/\d+/, '')
  }.take(5)
end

def string_transformer(str)
  str.reverse.swapcase.gsub(/\w+/) { |s| s.reverse }
end

def string_transformer_other(str)
  str.split(/\b/).reverse.map(&:swapcase).join
end

def up_array(arr)
  #your code here
  if ! arr.kind_of?(Array) || ! arr.detect {|x| x < 0}.nil? || ! arr.detect {|x| x >= 10}.nil? || arr.empty?
    nil
  else
    (arr.join.to_i + 1).digits.reverse
  end
end

def find_uniq(arr)
  counts = Hash.new(0)
  arr.each { |v| counts[v] += 1 }
  counts.select {|v, count| count == 1 }.keys.first
end

def find_uniq_better(arr)
  arr.uniq.each { |x| return x if arr.count(x) == 1 }
end

def count_adjacent_pairs(s) 
  s.downcase.split(" ").uniq.filter {|x| s.downcase.split(" ").count(x) >= 2 }.length  
end

def count_adjacent_pairs_better(s) 
  s.downcase.split.chunk_while{|a,b| a==b}.count{|a| a.size > 1}
end

def string_breakers(n, st)
  st.split(" ").join("").scan(/.{1,#{n}}/).join("\n")
end

def capitalize_other(s,ind)
  s.split("").map.with_index {|x, i| ind.member?(i) ? x.upcase: x }.join()
end

def reverse_alternate(string)
  string.split(" ").map.with_index {|x, i| i % 2 == 1 ? x.reverse(): x}.join(" ")
end

def more_zeros(s)
  s.unpack('C*').map {|e| [e.chr, e.to_s(2)]}
                .select { |x, y| y.count("0") > y.count("1") }
                .flat_map {|i| i[0] }
                .uniq
end

def more_zeroes_nice(s)
    s.chars.select { |c| 
      bits = c.ord.to_s(2)
      ones = bits.count('1')
      zeroes = bits.count('0')
      zeroes > ones
      }.uniq
end

def encrypt_this(text)
  text.split(" ").map {|x| 
    if x.length() == 1
      x.codepoints.to_a[0].to_s
    elsif x.length() == 2
      x.codepoints.to_a[0].to_s + x.split("").last()
    else
      x.codepoints.to_a[0].to_s + x[1..x.length].to_str[-1] + x[2..x.length-2] + x[1..x.length-1].to_str[0]
    end
  }.join(" ")
end

def lowest_product(input)
  input.length < 4 ? "Number is too small" : input.to_i.digits.sort.take(4).inject(:*)
end

def permute_a_palindrome(input)
  hm = Hash.new()
  input.split("").each {|x| hm.has_key?(x)? hm[x] += 1 : hm[x] = 1}
  if hm.keys().length == 1
    true
  elsif hm.values().count(1) > 1 || hm.values().to_a.select{|n| n != 1 && n % 2 == 1}.count() != 0
    false
  else 
    true
  end
end