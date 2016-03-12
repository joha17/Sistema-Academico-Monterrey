class QueryState < ActiveRecord::Base
	has_many :queries

	validates :DeState, presence: true
end
