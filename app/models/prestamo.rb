class Prestamo < ActiveRecord::Base
  belongs_to :user
  belongs_to :libro
  belongs_to :prestamo_estado
  belongs_to :signatura
end


