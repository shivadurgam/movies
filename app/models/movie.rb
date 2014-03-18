class Movie < ActiveRecord::Base
	has_one :theatre
	belongs_to :theatre
end
