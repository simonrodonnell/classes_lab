require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test

  def test_get_sports_team_name
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    assert_equal("Code Clan Utd", sports_team.team_name())
  end

  def test_get_players
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    assert_equal(["Fat Ronaldo", "Portuguese Ronaldo"], sports_team.players())
  end

  def test_get_coach_name
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    assert_equal("Gaffer McGafferson", sports_team.coach_name())
  end

  def test_set_coach_name
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    sports_team.coach_name = "Gafferoni DiGaffersoni"
    assert_equal("Gafferoni DiGaffersoni", sports_team.coach_name())
  end

  def test_add_new_player
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    sports_team.add_new_player("Nakamura")
    assert_equal(["Fat Ronaldo", "Portuguese Ronaldo", "Nakamura"], sports_team.players())
  end

  def test_find_player__is_true
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    assert_equal(true, sports_team.find_player("Fat Ronaldo"))
  end

  def test_find_player__is_false
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    assert_equal(false, sports_team.find_player("Roy of the Rovers"))
  end

  def test_get_points
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    assert_equal(0, sports_team.points())
  end

  def test_update_points__3_points_for_a_win
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    sports_team.update_points("win")
    assert_equal(3, sports_team.points())
  end

  def test_update_points__1_points_for_a_draw
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    sports_team.update_points("draw")
    assert_equal(1, sports_team.points())
  end

  def test_update_points__0_points_for_a_loss
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    sports_team.update_points("loss")
    assert_equal(0, sports_team.points())
  end

end
