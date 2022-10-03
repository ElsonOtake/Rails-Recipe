class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :read, :all
    can :manage, Recipe, user_id: user.id
    #   can :manage, Food, author: user
  end
end