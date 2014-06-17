class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user || User.new

    @user.roles.each { |role| send(role.name) }

    if @user.roles.size == 0
      can [:new, :create], User
    end
  end

  def client
    can [:show, :destroy, :update, :cancel], User
    can [:index, :home, :show], Tour
    can :add, Booking
  end

  def teller
    can :manage, :all
    cannot [:create, :change_role, :change_role_update], User
    cannot :add, Booking
  end

  def administrator
    can :manage, :all
    cannot :create, User
    cannot :add, Booking
  end
end
