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
    assert_equal(["Craig", "John", "Paul"], @team.players())
  end

  def test_coach()
    assert_equal("Coach Big Man", @team.coach())
  end

  def test_change_coach()
    @team.coach = "Coach Wee Man"
    assert_equal("Coach Wee Man", @team.coach())
  end

  def test_add_player()
    @team.add_player("David")
    assert_equal(["Craig", "John", "Paul", "David"], @team.players)
  end

  def test_is_player_in_team()
    result = @team.has_player("Paul")
    assert_equal(true, result)
  end

  def test_wins_counted()
    # @team.has.won(true)
    result = @team.result("win")
    assert_equal(1, result)
  end
end
