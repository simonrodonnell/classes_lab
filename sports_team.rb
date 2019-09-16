class SportsTeam

  attr_accessor(:team_name, :players, :coach_name, :points)

  def initialize(input_team_name, input_players, input_coach_name)
    @team_name = input_team_name
    @players = input_players
    @coach_name = input_coach_name
    @points = 0
  end

  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach_name()
  #   return @coach_name
  # end
  #
  # def set_coach_name(new_coach)
  #   @coach_name = new_coach
  # end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def find_player(search_name)
    for player in @players
      return true if player == search_name
    end
    return false
  end

  def update_points(result)
    points_array = {
      "win" => 3,
      "draw" => 1,
      "loss" => 0
    }
    @points += points_array[result]
  end

end
