class Ability
  include CanCan::Ability
#Este modelo se encarga de dar privilegios a cada uno de los roles diferentes
  def initialize(user)
   user ||= User.new
   #si el usuario es administrador
   if user.role_id == 1
    #puede hacer todo
     can :manage, :all
   elsif user.role_id == 2
    #si es profesor puede ver libros y eventos
     can [:show, :read], Libro
     can [:show, :read], Descarte
     can [:show, :read], Prestamo
     can [:show, :read], Evento
     can [:create, :update, :destroy], Query, :user_id => user.id
     can [:create, :update, :destroy], Descarte, :user_id => user.id
     can [:create, :update], Prestamo, :user_id => user.id
     can [:create, :update, :destroy], Evento, :user_id => user.id

     #can :manage, Evento, :id => user.id    
     #can :update, Evento, users: user.id
   else user.role_id == 3
    #si es es estudiante solo ver libro
      can [:show, :read], Libro
      can [:show, :read], Prestamo
      can [:create, :update], Prestamo, :user_id => user.id
    end
  end 
end
