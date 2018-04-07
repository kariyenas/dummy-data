require 'dummy_email/database_connector'
# The module is executed in the bin file
module DummyEmail
  def self.give_details(username, password, db_name, table_name, column_name)
    dbc = DataBaseConnector.new(username, password, db_name)
    dbc.dummy_email(table_name, column_name)
  end
end
