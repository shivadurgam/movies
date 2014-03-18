class Theatre < ActiveRecord::Base
	has_one :movie
	belongs_to :movie

end
