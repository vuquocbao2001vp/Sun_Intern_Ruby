# De 3 - Cau 2

# ham lay diem trung binh
def getAvgScore a, b, c 
    avg =  (a + b + c) / 3.0
    return avg.round(3)
end

student_list = Hash.new
max_avg_score = 0
max_avg_score_student = nil

puts "Nhap so luong hoc sinh:"
student_quantity = gets.chomp.to_i
student_quantity.times do |index|
    puts "Hoc sinh #{index + 1}"
    puts "Nhap ten:"
    name = gets.chomp
    puts "Diem mon Toan:"
    math = gets.chomp.to_f
    puts "Diem mon Van:"
    literature = gets.chomp.to_f
    puts "Diem mon Anh:"
    english = gets.chomp.to_f
    avg_score = getAvgScore(math, literature, english)
    if max_avg_score < avg_score
        max_avg_score = avg_score
        max_avg_score_student = name
    end
    student_list.store(name, {toan: math, van: literature, anh: english, avg: avg_score})
end

# Diem trung binh cao nhat
puts max_avg_score
puts max_avg_score_student

# Hash danh sach hoc sinh
puts student_list


        
