class Theatre < ActiveRecord::Base
	has_many :movies
	has_many :timings
	belongs_to :movie



def self.search(search)
  if search
    find(:all, :conditions => ['theatre_name LIKE ? OR place LIKE ? OR time LIKE ?', "#{search}%", "#{search}%", "#{search}%"])
  
  else
    find(:all)
  end
end

end
