class Comment < ActiveRecord::Base
  belongs_to :query
  belongs_to :user
end
