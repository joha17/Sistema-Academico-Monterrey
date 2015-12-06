class Libro < ActiveRecord::Base
  belongs_to :editorial
  belongs_to :prestamo

  def self.search(search)
  	where("TitLib LIKE ?", "%#{search}%")
  end

end
