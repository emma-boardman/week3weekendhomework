require( 'minitest/autorun')
require( 'minitest/rg')
require_relative( '../models/league')


class TestSales < Minitest::Test

  def setup
    match1 = Match.new( {'home_team_id' => "Team 1", 'away_team_id' => "Team 2", 'home_team_score' => 5, 'away_team_score' => 3})
    match2 = Match.new( {'home_team_id' => "Team 3", 'away_team_id' => "Team 4", 'home_team_score' => 1, 'away_team_score' => 4})
    match3 = Match.new( {'home_team_id' => "Team 1", 'away_team_id' => "Team 3", 'home_team_score' => 3, 'away_team_score' => 6})
    match4 = Match.new( {'home_team_id' => "Team 2", 'away_team_id' => "Team 4", 'home_team_score' => 2, 'away_team_score' => 1})
    match5 = Match.new( {'home_team_id' => "Team 2", 'away_team_id' => "Team 3", 'home_team_score' => 5, 'away_team_score' => 3})
    match6 = Match.new( {'home_team_id' => "Team 3", 'away_team_id' => "Team 1", 'home_team_score' => 2, 'away_team_score' => 4})
    match7 = Match.new( {'home_team_id' => "Team 1", 'away_team_id' => "Team 4", 'home_team_score' => 1, 'away_team_score' => 4})

    matches = [match1, match2, match3, match4, match5, match6, match7]
 
    @league = League.new( matches )
    

  end


  def test_total_points
    result = @league.total_points
    assert_equal( 44, result )
  end

 def test_total_points_scored_by_individual_team_home
    result = @league.total_points_scored_by_individual_team_home("Team 1")
    assert_equal(9, result)
  end

  def test_total_points_scored_by_individual_team_away
    result = @league.total_points_scored_by_individual_team_away("Team 1")
    assert_equal(4, result)
  end

  def test_game_winner
    result = @league.game_winner
    assert_equal(["Team 1", "Team 4", "Team 3", "Team 2", "Team 2", "Team 1", "Team 4"], result)
  end

  def test_number_of_games_won
    result = @league.number_of_games_won
    assert_equal({"Team 1" => 2, "Team 2" => 2, "Team 3" => 1, "Team 4" => 2}, result)
  end



  # def test_total_points_for_each_team
  #   result = @league.total_points_for_each_team
  #   assert_equal([{"Team 1" => 6}, {"Team 2" => 8}], result)
  # end

  # def test_most_goals_scored
  #   result = @league.most_goals_scored
  #   assert_equal("Team 4", result)
    #combine home and away goals for each team, then push that data to a hash with team => total goals scored
  



  end

