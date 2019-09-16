require("minitest/autorun")
require("minitest/rg")
require_relative("../student")

class TestStudentClass < Minitest::Test

  def test_get_student_name
    student = Student.new("Bob", "E34")
    assert_equal("Bob", student.get_student_name())
  end

  def test_get_cohort_name
    student = Student.new("Bob", "E34")
    assert_equal("E34", student.get_cohort_name())
  end

  def test_set_student_name
    student = Student.new("Bob", "E34")
    student.set_student_name("Jack")
    assert_equal("Jack", student.get_student_name())
  end

  def test_set_cohort_name
    student = Student.new("Bob", "E34")
    student.set_cohort_name("G12")
    assert_equal("G12", student.get_cohort_name())
  end

  def test_student_can_talk
    student = Student.new("Bob", "E34")
    assert_equal("I can talk!", student.can_talk())
  end

  def test_favourite_language
    student = Student.new("Bob", "E34")
    assert_equal("I love Ruby", student.favourite_language("Ruby"))
  end

end
