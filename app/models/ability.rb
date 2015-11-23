class Ability
  include CanCan::Ability
#Este modelo se encarga de dar privilegios a cada uno de los roles diferentes
  def initialize(user)
   user ||= User.new
   #si el usuario es administrador
   if user.role == "administrador"
    #puede hacer todo
     can :manage, :all
   elsif user.role == "profesor"
    #si es profesor puede ver libros y eventos
     can :show, Libro
     can [:create, :show, :update], Query
     can [:create, :show, :update], Prestamo
     can [:create, :show, :update], Evento
     #can :manage, Evento, :id => user.id    
     #can :update, Evento, users: user.id
   else user.role == "estudiante"
    #si es es estudiante solo ver libro
      can :show, Libro
      can [:create, :show, :update], Prestamo
    end
  end 
end
