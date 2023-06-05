# De 2

# Khoi tao lop nhan vien Employee
class Employee
    Base_Salary = 3000
    attr_accessor :name, :code, :position, :salary
    def initialize name = nil, code = nil, position = nil
        @name = name
        @code = code
        @position = position
    end

    @salary = 0

    # Tinh luong
    def getSalary work_time, ot_time = 0
        if @position == "Dev"
            @salary = Base_Salary * work_time * 1.15
            @salary = @salary + Base_Salary * ot_time * 1.5 if ot_time > 0
        elsif @position == "Tester"
            @salary = Base_Salary * work_time * 1.1
        elsif @position == "QA"
            @salary = Base_Salary * work_time
            @salary = @salary + Base_Salary * ot_time * 1.5 if ot_time > 0
        else
            @salary = Base_Salary * work_time
        end
        @salary = @salary.round(3)
    end

    # Hien thi thong tin nhan vien
    def showInfo
        puts "Nhan vien #{@name}, ma nhan vien #{@code}, bo phan #{@position}, luong #{@salary}"
    end
end

# Nhap danh sach nhan vien tu ban phim
puts "Nhap so luong nhan vien:"
employee_amount = gets.chomp.to_i
employees = Array.new
employee_amount.times do |index|
    emp = Employee.new
    puts "Nhan vien #{index + 1}"
    puts "Nhap ten nhan vien:"
    emp.name = gets.chomp
    puts "Nhap ma nhan vien:"
    emp.code = gets.chomp
    puts "Nhap bo phan:"
    emp.position = gets.chomp
    puts "Nhap so gio lam:"
    work_time = gets.chomp.to_f
    if emp.position == "Dev" || emp.position == "QA"
        puts "Nhap so gio ot:"
        ot_time = gets.chomp.to_f
    end
    emp.getSalary work_time, ot_time
    # 1. Them vao danh sach nhan vien
    employees.push emp
end

# 2. Hien thi toan bo thong tin nhan vien
employees.each do |employee|
    employee.showInfo
end

# 3. Lấy ra mã nhân viên có số lương > 5000
filter_employee_ids = employees.select{|emp| emp.salary > 5000.0}.map{|emp| emp.code}
puts filter_employee_ids.inspect

# 4. Thêm mới 1 nhân viên vào danh sách nhân viên hiện có
new_employee = Employee.new "Huy", "20", "QA"
new_employee.getSalary 10, 2.5
employees.push new_employee
puts employees.inspect