class Descarte < ActiveRecord::Base
  belongs_to :user
  belongs_to :libro
  belongs_to :signatura

  validates :libro_id, presence: true
  validates :signatura_id, presence: true
  validates :ObsDesc, presence: true
end
