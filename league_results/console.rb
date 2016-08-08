require_relative('./models/match')
require_relative('./models/team')

require( 'pry-byebug')

Team.delete_all()

team1 = Team.new( { 'name' => 'Average Joes'})
team2 = Team.new( { 'name' => 'Globo Gym Purple Cobras'})
team3 = Team.new( { 'name' => 'Skillz That Killz'})
team4 = Team.new( { 'name' => 'Lumberjacks'})
team5 = Team.new( { 'name' => 'Team Blitzkrieg'})
team6 = Team.new( { 'name' => 'Kamikazes'})
team7 = Team.new( { 'name' => 'Las Vegas Police Department'})

team1.save()
team2.save()
team3.save()
team4.save()
team5.save()
team6.save()
team7.save()

match1 = Match.new( {'home_team_id' => team1.id, 'away_team_id' => team2.id, 'home_team_score' => 45, 'away_team_score' => 23})
match2 = Match.new( {'home_team_id' => team3.id, 'away_team_id' => team4.id, 'home_team_score' => 15, 'away_team_score' => 5})
match3 = Match.new( {'home_team_id' => team5.id, 'away_team_id' => team6.id, 'home_team_score' => 31, 'away_team_score' => 36})
match4 = Match.new( {'home_team_id' => team7.id, 'away_team_id' => team2.id, 'home_team_score' => 32, 'away_team_score' => 12})

match1.save()
match2.save()
match3.save()
match4.save()



binding.pry
nil