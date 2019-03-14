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

    array = array[(0..i)] + array[(i+1..-1)].delete_if do |x|
      x == array[i]
    end

    array[i][:count] = num
    i += 1
  end
  array
end


def merge_data(keys, data)
  merged_data = [{},{}]

  data[0]["blake"].each do |key, value|
    merged_data[0][:first_name] = "blake"
    merged_data[0][key] = value
    merged_data[0][:motto] = keys[0][:motto]
  end

  data[0]["ashley"].each do |key, value|
    merged_data[1][:first_name] = "ashley"
    merged_data[1][key] = value
    merged_data[1][:motto] = keys[1][:motto]
  end

  merged_data
end
