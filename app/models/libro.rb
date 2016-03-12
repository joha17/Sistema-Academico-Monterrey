class Libro < ActiveRecord::Base
  belongs_to :editorial
  belongs_to :prestamo

  validates :TitLib, presence: true
  validates :AutLib, presence: true
  validates :CantLib, presence: true
  validates :EdicLib, presence: true
  validates :numInsc, presence: true
  validates :CodDewLib, presence: true

end
