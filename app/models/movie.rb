class Movie < ActiveRecord::Base
	has_many :theatres
	belongs_to :theatre
	




def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ? OR actor LIKE ? OR actress LIKE ?', "#{search}%", "#{search}%", "#{search}%"])
  
  else
    find(:all)
  end
end


end
