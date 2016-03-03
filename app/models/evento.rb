class Evento < ActiveRecord::Base
  belongs_to :user

  validates :NomEven, presence: true
  validates :FecEvent, presence: true
end
