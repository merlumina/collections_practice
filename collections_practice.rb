def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort {|a, b| b <=> a}
end

def sort_array_char_count(array)
    array.sort_by {|a| a.length}
end

def swap_elements(array)
    a = array[1]
    b = array[2]
    array[1] = b
    array[2] = a
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.map do |name|
        split_name = name.split('')
        split_name[2] = "$"
        name = split_name.join
    end
end

def find_a(array)
    array.select {|item| item.start_with?("a")}
end

def sum_array(array)
    array.inject(:+)
end

def add_s(array)
    array.each_with_index.collect do |item, index|
        if index == 1
            item
        else
            item += "s"
        end
    end
end