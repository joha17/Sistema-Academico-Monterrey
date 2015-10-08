class Ability
  include CanCan::Ability

  def initialize(user)
   user ||= User.new
   if user.role == "administrador"
     can :manage, :all
   elsif user.role == "profesor"
     can :show, Libro
     #can [:show, :edit], Post, :id => user.id 
   else user.role == "estudiante"
      can :show, Libro
    end
  end 
end
