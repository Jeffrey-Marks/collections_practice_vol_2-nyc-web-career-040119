def begins_with_r(array)
  !array.any? do |word|
    word[0] != "r"
  end
end


def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end


def first_wa(array)
  array.find do |word|
    word[0,2] == "wa"
  end
end


def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
end


def count_elements(array)
  i = 0
  
  while i < array.length
    num = array[(i..-1)].select do |x|
      x == array[i]
    end.length
    
    array[i][:count] = num
    
    array[(i+1..-1)].delete_if do |x|
      x == array[i]
    end
    i += 1
  end
end