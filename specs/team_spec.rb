require('minitest/autorun')
require('minitest/rg')
require_relative ('../team.rb')

class TeamTest < MiniTest::Test


  def setup
    @team = Team.new("Team Good Guys", ["Craig", "John", "Paul"], "Coach Big Man")
  end

  def test_team_name()
    assert_equal("Team Good Guys", @team.team_name())
  end

  def test_players()
    result = @team.player("Craig")
    assert_equal("Craig", result)
  end

  def test_coach()
    assert_equal("Coach Big Man", @team.coach())
  end






end
