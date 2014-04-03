class Theatre < ActiveRecord::Base
	has_many :movies
	has_many :timings
	belongs_to :movie
	before_save :capitalize_first_letter
	after_validation :show_msg


	validates_presence_of :theatre_name, :place, :time, :message => ": cant be blank"
	validates_length_of :theatre_name, :place, :time, :in => 2..20, :message => ": should have minimum 2 and maximum 20 letters"
	validates_format_of :theatre_name, :place, :time, :with =>  /\A[a-zA-Z0-9\s]+\z/, :excluded_chars => %w('then', 'an'), :message => ": only alphanumerics"


	def self.search(search)
		if search
			find(:all, :conditions => ['theatre_name LIKE ? OR place LIKE ? OR time LIKE ?', "#{search}%", "#{search}%", "#{search}%"])

		else
			find(:all)
		end
	end

	private
	def capitalize_first_letter
		self.theatre_name = self.theatre_name.upcase
		self.place = self.place.upcase.titleize
		self.time = self.time.upcase.titleize
	end

	def show_msg
		if Theatre.new.errors.any? 
			puts "invalid input"
		else
			puts "no errors"
		end
	end

end
