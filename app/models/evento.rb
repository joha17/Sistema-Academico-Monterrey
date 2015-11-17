class Evento < ActiveRecord::Base
	validates :FechEven,
            presence: true,
            uniqueness: true
            
	belongs_to :user
end
