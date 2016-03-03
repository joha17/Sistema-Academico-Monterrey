class Prestamo < ActiveRecord::Base
  belongs_to :user
  belongs_to :libro
  belongs_to :prestamo_estado
  belongs_to :signatura

  validates :libro_id, presence: true
  validates :nomSolic, presence: true

  def self.search(search)
  	where("TitLib LIKE ?", "%#{search}%")
  end

end
