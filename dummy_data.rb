load 'database_connector.rb'
module DummyData
  def self.give_details
    puts 'Enter the mysql username'
    username = gets.chomp
    puts 'Enter the mysql password'
    pass = gets.chomp
    puts 'Enter database name'
    db_name = gets.chomp
    dbc = DataBaseConnector.new(username, pass, db_name)
    dbc.make_it_dummy(tb, col)
  end
end
