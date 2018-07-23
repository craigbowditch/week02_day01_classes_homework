class Team

  attr_reader :team_name, :players
  attr_accessor :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(player)
    @players.push(player)
  end

  def has_player(player)
    return @players.include?(player)
  end

  def result(result)
    if result == "win"
      @points += 1
    end
  end

end
