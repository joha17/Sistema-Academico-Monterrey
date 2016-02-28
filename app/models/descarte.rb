class Descarte < ActiveRecord::Base
  belongs_to :user
  belongs_to :signatura
  belongs_to :libro
end
