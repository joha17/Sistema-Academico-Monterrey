class Query < ActiveRecord::Base
  belongs_to :user
  belongs_to :query_state
  belongs_to :signatura
  has_many :comments

  validates :NomCon, presence: true
  validates :DesCon, presence: true
  validates :propCons, presence: true
  validates :signatura_id, presence: true
  validates :libCons, presence: true
  validates :FecCon, presence: true
  validates :seccion, presence: true
  validates :info_solic, presence: true
  validates :nomLec, presence: true

end
