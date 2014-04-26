class Movie < ActiveRecord::Base
	has_many :theatres
	belongs_to :theatre

	before_validation :display_msg
	after_validation :show_msg

	#before_save :capitalize_first_letter
	before_save do |t|
		t.name = t.name.upcase.titleize
		t.actor = t.actor.upcase.titleize
		t.actress = t.actress.upcase.titleize
	end




	validates_presence_of :name, :actor, :actress, :message => ": cant be blank"
	validates_length_of :name, :actor, :actress, :in => 2..20, :message => ": should have minimum 2 and maximum 20 letters"
	validates_format_of :actor, :actress, :with =>  /\A[a-zA-Z\s]+\Z/, :excluded_chars => %w('then', 'an'), :message => ": only alphabets"
	validates_format_of :name, :with =>  /\A[a-zA-Z0-9\s]+\z/, :message => ": only alphanumerics"

	def self.search(query)
		if query
			where(['name LIKE ? OR actor LIKE ? OR actress LIKE ?', "#{query}%", "#{query}%", "#{query}%"])
		else
			scoped
		end
	end

	private
	def show_msg
		puts "validation completed"
	end

	def display_msg

		puts "validation started"
	end

	

	#private
	#def capitalize_first_letter
	#	self.name = self.name.upcase
	#	self.actor = self.actor.upcase.titleize
	#	self.actress = self.actress.upcase.titleize
		#new_string = string.slice(0,1).capitalize + string.slice(1..-1)
	#end




end
