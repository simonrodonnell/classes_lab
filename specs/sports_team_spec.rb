require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test

  def test_get_sports_team_name
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    assert_equal("Code Clan Utd", sports_team.get_team_name())
  end

  def test_get_players
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    assert_equal(["Fat Ronaldo", "Portuguese Ronaldo"], sports_team.get_players())
  end

  def test_get_coach_name
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    assert_equal("Gaffer McGafferson", sports_team.get_coach_name())
  end

  def test_set_coach_name
    sports_team = SportsTeam.new("Code Clan Utd", ["Fat Ronaldo", "Portuguese Ronaldo"], "Gaffer McGafferson")
    sports_team.set_coach_name("Gafferoni DiGaffersoni")
    assert_equal("Gafferoni DiGaffersoni", sports_team.get_coach_name())
  end

end
