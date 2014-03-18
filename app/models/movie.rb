class Movie < ActiveRecord::Base
	has_many :theatres
	belongs_to :theatre
end
