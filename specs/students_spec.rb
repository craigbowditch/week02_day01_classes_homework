require('minitest/autorun')
require('minitest/rg')
require_relative ('../students.rb')

class StudentTest < MiniTest::Test


  def setup
    @student = Student.new("Craig", "G7")
  end

  def test_student_name()
    assert_equal("Craig", @student.name())
  end

  def test_student_cohort()
    assert_equal("G7", @student.cohort())
  end

  def test_change_student_name()
    @student.set_name("Robert")
    assert_equal("Robert", @student.name())
  end

  def test_change_student_cohort()
    @student.set_cohort("G6")
    assert_equal("G6", @student.cohort())
  end
end
