class Student
  attr_accessor :name
 
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade ? "Well done #{name}!" : "Next time"
  end

  protected

  def grade
    @grade
  end

end

student1= Student.new("Isabela", 100)
student2= Student.new("Tanim", 80)
p student1.name
p student2.name
p
puts "    "
p student1.better_grade_than?(student2)