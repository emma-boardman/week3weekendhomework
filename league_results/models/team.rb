require( 'pg' )
require_relative('../db/sql_runner')

class Team
  attr_reader( :id, :name)

 def initialize( options )
   @id = options['id'].to_i
   @name = options['name']
 end

 def self.all()
  sql = "SELECT * FROM teams"
  teams = SqlRunner.run( sql )
  result = teams.map {|team| Team.new( team )}
  return result
end 

def self.delete_all()
  sql = "DELETE FROM teams"
  SqlRunner.run(sql)
end

 def save()
  sql = "INSERT INTO teams (name) VALUES ('#{@name}') returning *;"
  team = SqlRunner.run( sql ).first
  @id = team['id']
 end

 def matches()
  sql = "SELECT * FROM matches WHERE home_team_id = #{@id} OR away_team_id = #{@id};"
  matches = SqlRunner.run( sql )
  result = matches.map {|match| Match.new (match)}
end


end