class User < ActiveRecord::Base

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "160x160>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  has_secure_password
  has_many :eventos
  has_many :consults
  has_many :items
  has_many :descartes
  belongs_to :role

  validates :CedUs,
            presence: true,
            uniqueness: true,
            length: { minimum: 9 },
            length: { maximum: 9 }
  validates :NomUs,
            presence: true
  validates :ApUnoUs,
            presence: true
  validates :ApDosUs,
            presence: true
  validates :edadUs,
            presence: true
  validates :SecUs,
            presence: true
  #validates :email,
   #         presence: true,
    #        uniqueness: true,
    #        format: {
    #          with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    #        }
  #def to_s
  #  "#{NomUs}"
  #end
def role?(role)
    return !!self.roles.find_by_nomRole(role.to_s.camelize)
end

  

    def roles=(roles)
    self.roles_mask = (roles )
  end
end
