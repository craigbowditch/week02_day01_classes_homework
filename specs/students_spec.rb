require('minitest/autorun')
require('minitest/rg')
require_relative ('../classes_homework.rb')

class StudentTest < MiniTest::Test


  def setup
    @student = Student.new("Craig", "G7")
  end
