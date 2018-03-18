require 'mysql2'
# connects db and takes inputs and makes the data dummy
class DataBaseConnector
  def initialize(username, pass, db_name)
    @con = Mysql2::Client.new(host: 'localhost', username: username,
                              password: pass, database: db_name)
  end

  def make_it_dummy
    puts 'Enter the table name'
    table = gets.chomp
    puts 'Enter the column which needs to be dummy'
    column = gets.chomp
    puts 'Press 1 if email and 2 if not an email field'
    if gets.chomp == 1.to_s
      dummy_email(table, column)
    else
      dummy_username(table, column)
    end
  end

  def dummy_email(tbl, col)
    @con.query("update #{tbl} SET #{col} = REPLACE(#{col},'@','@dummy.') ")
  end

  def dummy_username(tbl, col)
    @con.query("update #{tbl} SET #{col} = concat(#{col},'.dummy') ")
  end
end
