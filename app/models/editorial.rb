class Editorial < ActiveRecord::Base
	has_many :libros

	validates :NomEdi, presence: true
end
