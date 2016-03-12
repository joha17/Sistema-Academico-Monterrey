class Signatura < ActiveRecord::Base
	has_many :queries
	validates :nomSig, presence: true
end
