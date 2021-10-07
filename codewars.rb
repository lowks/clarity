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