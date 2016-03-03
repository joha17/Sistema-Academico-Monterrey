class PrestamoEstado < ActiveRecord::Base
  validates :nomEstPres, presence: true
end
