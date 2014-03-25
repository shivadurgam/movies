class Timing < ActiveRecord::Base
	belongs_to :theatre


	def self.search(search)
		if search
			find(:all, :order => 'theatre_name', :conditions => ['theatre_name LIKE ?', "#{search}%"])
			
		else
			find(:all)
		end
	end

end


