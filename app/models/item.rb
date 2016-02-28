class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  belongs_to :category

  def self.search(search)
  	where("NomItem LIKE ?", "%#{search}%")
  end

end
