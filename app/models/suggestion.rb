class Suggestion < ActiveRecord::Base
  belongs_to :user

  validates :LibSug, presence: true
  validates :AutSug, presence: true
  validates :CantSug, presence: true
end
