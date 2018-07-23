require('minitest/autorun')
require('minitest/rg')
require_relative ('../students.rb')

class StudentTest < MiniTest::Test


  def setup
    @student = Student.new("Craig", "G7")
  end

  def test_getting_name()
    assert_equal("Craig", @student.name())
  end

  def test_getting_cohort()
    assert_equal("G7", @student.cohort())
  end

end
