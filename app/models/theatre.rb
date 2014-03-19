class Theatre < ActiveRecord::Base
	has_many :movie
	belongs_to :movie

end
