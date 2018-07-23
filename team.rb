class Team

  attr_reader :team_name, :players
  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def add_player(player)
    @players.push(player)
  end

  def has_player(player)
    return @players.include?(player)
  end
end
