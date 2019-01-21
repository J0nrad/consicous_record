require_relative 'lib/01_relative_record'

class Movie < RelativeRecord::Base
  belongs_to :director
  has_one_through :genre, :director

  finalize!
end

class Director < RelativeRecord::Base
  belongs_to :genre

  has_many :movies

  finalize!
end

class Genre < RelativeRecord::Base
  has_many :directors

  finalize!
end
