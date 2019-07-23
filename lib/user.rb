
require 'pry'

class User

	attr_accessor :email,:age
	@@all_user = []


	def initialize(email_input,age_input)


		if check(email_input) == true

			@email = email_input # enregistrement du mail

			@age = age_input # enregistrement de l'age

			@@all_user<< self # insertion des Users dans le tableau all_user
	puts @@all_user
		else
			puts "Mail non accepté, reformulé"

		end
	end



	def self.creation

		return @@all_user


	end


	def check(email_input)

		 if email_input.match(/[@][gmail]/) ||email_input.match(/[@][yahoo]/) # condition pour tester le mail

		 	return true

		 else

		 	return false

		 end
	end



	def self.find_by_mail(email)

		@@all_user.each do |user|

			if user.email == email
				return user
			end
	end
end

end

binding.pry
	puts "fin du programme"
