class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user
    if user
      user.id == 1 ? admin_abilities : user_abilities
    else
      guest_abilities
    end
  end


  def guest_abilities
  end

  def admin_abilities
    can :manage, :all
  end

  def user_abilities
    can :read, [Item, Order]
    can :create, [Order]
    can :update, [Order], user_id: @user.id
    can :destroy, [Order], user_id: @user.id
  end

end
