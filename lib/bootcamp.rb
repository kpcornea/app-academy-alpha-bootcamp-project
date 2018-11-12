require "byebug"

class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |h, k| h[k] = [] }
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(teacher)
    @teachers << teacher
  end

  def enroll(student)
    if @students.length < @student_capacity
      @students << student
      return true
    end
    false
  end

  def enrolled?(student)
    @students.include?(student)
  end

  def grades
    @grades
  end

  def add_grade(student, new_grade)
    @grades[student] << new_grade
  end

end

#
# b = Bootcamp.new("Map Academy", "Anyone can be a cartographer.", 6)
#
# p b
#
# r = b.grades
# p r
# # byebug
# b.add_grade("Alice", 42)
# p r
# p b.grades["Alice"]
# # byebug
# p b.grades["Bob"]
