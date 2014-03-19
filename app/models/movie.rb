class Movie < ActiveRecord::Base
	has_many :theatre
	belongs_to :theatre
end
