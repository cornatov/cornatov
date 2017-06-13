class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :read, :all
    can :manage, User, id: user.id
    if user.admin?
      can :destroy, :comments
      can :manage, :all
    else
      can :create, :comments
    end
  end
end
