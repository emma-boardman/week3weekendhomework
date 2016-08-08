require_relative( 'match')
require_relative( 'team')
require( 'pry-byebug')

class League

def initialize( matches )
  @matches = matches
end

def total_points
    total = 0
    @matches.each {|match| total += (match.home_team_score + match.away_team_score)}
    return total
end

def total_points_scored_by_individual_team_home(team_num)
  total = 0
  @matches.each {|match| total += match.home_team_score if match.home_team_id == team_num}
  return total
end


def total_points_scored_by_individual_team_away(team_num)
  total = 0
  @matches.each {|match| total += match.away_team_score if match.away_team_id == team_num}
  return total
end

def game_winner
  winners = []
  @matches.each do |match| 
    if match.home_team_score > match.away_team_score
      winners << match.home_team_id
    else
      winners << match.away_team_id
    end
  end 
  return winners
end

def number_of_games_won
  counts = Hash.new 0
  game_winner.each do |winner|
    counts[winner] += 1
  end
  return counts
end







#want to end up with an array of hashes [{team => points}, {team => points}]
#total_points << { => }


# def total_points_for_each_team


#    # total_points = [{ "Team 1" => 0 }, {"Team 2" => 0}, {"Team 3" => 0}, {"Team 4" => 0}, {"Team 4" => 0}]
#    # @matches.each do |match|
#    #   if match.home_team_id = total_points.each[:key] 

# -----------------------

#   total_points = []
#   @matches.map {|match| return match} 

#    do
#   | home_id, away_id, home_score, away_score |
#       if home_id == @matches.home_team_id || away_id = @matches.away_team_id
#     total_points << {home.id => (@matches.home_team_score + @matches.away_team_score)}
#       end
#    end
#  end
#     return total_points
# end

end
