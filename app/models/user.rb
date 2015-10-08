class User < ActiveRecord::Base
  has_secure_password

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
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }
  def to_s
    "#{nombre} #{apellido}"
  end

    def roles=(roles)
    self.roles_mask = (roles )
  end
end
