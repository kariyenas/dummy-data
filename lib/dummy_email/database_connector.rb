require 'mysql2'
# for database connection and operations
class DataBaseConnector
  def initialize(username, pass, db_name)
    @con = Mysql2::Client.new(host: 'localhost', username: username,
                              password: pass, database: db_name)
  end

  def dummy_email(tbl, col)
    @con.query("update #{tbl} SET #{col} = REPLACE(#{col},'@','@dummy.') ")
  end
end
