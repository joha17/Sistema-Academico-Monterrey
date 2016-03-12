class Role < ActiveRecord::Base
  has_many :users
  validates :nomRole, presence: true
end
