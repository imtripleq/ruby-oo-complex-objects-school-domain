# code here!

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] = [] if roster[grade] == nil
    roster[grade] << student_name
  end

  def grade(num)
    roster[num]
  end

  def sort
    sorted = {}
    roster.each { |grade, students| sorted[grade] = students.sort }
    sorted
  end
end
