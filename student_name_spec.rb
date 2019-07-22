require('minitest/autorun')
require('minitest/rg')
require_relative('../student_name.rb')
class TestStudent <MiniTest::Test
  def setup()
    @student = Student.new("Martin","G14")





  end

  def test_get_student_name()
  assert_equal("Martin", @student.student_name)
  end

  def test_get_cohort()
  assert_equal("G14", @student.cohort)
  end

  def test_set_student_name()
    @student.set_student_name("Martin")
    assert_equal("Martin", @student.student_name )
  end

  def test_set_student_cohort()
    @student.set_cohort("G14")
    assert_equal("G14", @student.cohort)
  end

  def test_talk()
  assert_equal("I can talk", @student.talk)
  end

  def test_student_favourite_language
assert_equal("I love Ruby", @student.student_favourite_language("Ruby"))
  end
end
