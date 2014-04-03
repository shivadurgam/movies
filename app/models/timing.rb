class Timing < ActiveRecord::Base
	belongs_to :theatre

	before_save :capitalize_first_letter
	
	

	validates_presence_of :morning_show, :matinee_show, :first_show, :second_show, :message => ": cant be blank"
	validates_length_of  :morning_show, :matinee_show, :first_show, :second_show, :in => 2..20, :message => ": should have minimum 2 and maximum 20 letters"
	validates_format_of  :morning_show, :matinee_show, :first_show, :second_show, :with =>  /\A[a-zA-Z0-9\s]+\z/, :excluded_chars => %w('then', 'an'), :message => ": only alphanumerics"


	def self.search(search)
		if search
			find(:all, :order => 'theatre_name', :conditions => ['theatre_name LIKE ?', "#{search}%"])
			
		else
			find(:all)
		end
	end

	private
	def capitalize_first_letter
		
		self.morning_show = self.morning_show.upcase.titleize
		self.matinee_show = self.matinee_show.upcase.titleize
		self.first_show = self.first_show.upcase.titleize
		self.second_show = self.second_show.upcase.titleize
	end

	

end


