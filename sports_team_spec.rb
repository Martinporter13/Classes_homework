require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')
class TestSportsTeam <MiniTest::Test
  def setup()
    @sports_team = SportsTeam.new("Rangers", ["Morelos","Jack","Defoe"], "Steven Gerrard", 0)
  end

  def test_get_team_name()
    assert_equal("Rangers", @sports_team.team_name)
  end

  def test_get_players()
    assert_equal(["Morelos","Jack","Defoe"], @sports_team.players)
  end

  def test_get_coach()
    assert_equal("Steven Gerrard", @sports_team.coach)
  end

  def test_set_coach()
    @sports_team.coach=("Steven Gerrard")
    assert_equal("Steven Gerrard", @sports_team.coach)
  end

  def test_add_players()
    @sports_team.add_players("Kent")
    assert_equal(["Morelos","Jack","Defoe","Kent"], @sports_team.players)

  end

  def test_existing_player()
    assert_equal(true, @sports_team.existing_player("Morelos"))
  end

  def test_existing_player()
    assert_equal(false, @sports_team.existing_player("Davis"))
  end

  def test_team_points()
    assert_equal(0, @sports_team.team_points)
  end

  def test_get_points()
    assert_equal(0, @sports_team.team_points)
  end

  def test_team_results()
    @sports_team.team_result("won")
    assert_equal(3, @sports_team.team_points())
  end

end
