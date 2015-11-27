class Query < ActiveRecord::Base
  belongs_to :user
  belongs_to :query_state
  belongs_to :signatura
end
