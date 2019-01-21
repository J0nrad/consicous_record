require_relative 'db_connection'
require_relative '01_sql_object'

module Searchable
  def where(params)
    where_line = ""
    where_line = params.keys.map do |key|
      "#{key} = ?"
    end.join( " AND ")

    search_results = DBConnection.execute(<<-SQL, *params.values)
      SELECT
        *
      FROM
        #{self.table_name}
      WHERE
        #{where_line}
    SQL
    parse_all(search_results)
  end
end
