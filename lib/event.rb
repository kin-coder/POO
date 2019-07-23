
require 'pry'
require 'time'

class Event

attr_accessor :star_date,:duration,:title,:attendees, :t, :my_event


	def initialize(date_inpute,duration_input,title_input,attendees_input)


			@star_date = Time.parse(date_inpute) # enregistrement du date et conversion du string en time

			@duration = duration_input # enregistrement de l'age

			@title = title_input

			@attendees = attendees_input #
	end

	def postpone_24h # décalage de 24H


		@star_date += 24*60*60 # seconde, minute, heure

	end


	def end_date

		end_date = @star_date + @duration

	end

	def is_past?
		@t = Time.now
		if @star_date < @t
			return true
		end

	end


	def is_future?
		@t = Time.now
		if @star_date > @t
			return true
		else
			return false
		end

	end


	def is_soon?
		if @star_date < Time.now+30 # test si la date entrée est à 30 mn du rdv

			return true
		else
			return false
		end
	end


	def to_s

		puts "Titre: #{@title}"

		puts "Date de début: #{@star_date}"

		puts "La durée est de:  #{@duration} minutes"

		puts "Les invités sont:  #{@attendees.join(",")}"

	end

	def age_analysis
	    age_array = [] #On initialise un array qui va contenir les âges de tous les participants à un évènement
	    average = 0 #On initialise une variable pour calculer la moyenne d'âge à l'évènement

	    @attendees.each do |attendee| #On parcourt tous les participants (objets de type User)
	      age_array << attendee.age #leur âge est stocké dans l'array des âges
	      average = average + attendee.age #leur âge est additionné pour préparer le calcul de la moyenne
	    end

	    average = average / @attendees.length #on divise la somme des âges pour avoir la moyenne

	    puts "Voici les âges des participants :"
	    puts age_array.join(", ")
	    puts "La moyenne d'âge est de #{average} ans"
	  end




end
binding.pry
