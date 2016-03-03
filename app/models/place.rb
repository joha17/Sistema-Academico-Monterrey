class Place < ActiveRecord::Base
	has_many :items

	validates :NomPlace, presence: true

end
