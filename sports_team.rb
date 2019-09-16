class SportsTeam

  def initialize(input_team_name, input_players, input_coach_name)
    @team_name = input_team_name
    @players = input_players
    @coach_name = input_coach_name
  end

  def get_team_name()
    return @team_name
  end

  def get_players()
    return @players
  end

  def get_coach_name()
    return @coach_name
  end

  def set_coach_name(new_coach)
    @coach_name = new_coach
  end

end
