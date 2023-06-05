# De 1 - Cau 2

a =  [2,20,1,"/a","/c"]
b = [1,"/c/a/","/b","/a",50]
c = 1

# Viết câu lệnh kiểm tra mảng b có chứa c không?
check = false
b.each do |element|
    if c == element
        check = true
        break
    end
end
puts check

# Viết hàm lấy ra những phần tử có trong cả 2 mảng.
def get_same_elements first_arr, second_arr
    result_arr = Array.new
    first_arr.each do |first_arr_element|
        second_arr.each do |second_arr_element|
            if first_arr_element .eql? second_arr_element
                result_arr.push first_arr_element
                break
            end
        end
    end
    return result_arr
end
puts get_same_elements(a, b).inspect

# Viết hàm lấy ra những phần tử chỉ có trong mảng a mà không có trong mảng b
def get_different_elements first_arr, second_arr
    result_arr = Array.new first_arr
    first_arr.each do |first_arr_element|
        second_arr.each do |second_arr_element|
            if first_arr_element .eql? second_arr_element
                result_arr.delete first_arr_element
                break
            end
        end
    end
    return result_arr
end
puts get_different_elements(a, b).inspect