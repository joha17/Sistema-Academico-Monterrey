class Libro < ActiveRecord::Base
	belongs_to :editorial
	belongs_to :prestamo
end
