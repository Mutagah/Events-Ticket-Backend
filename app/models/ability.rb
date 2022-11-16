# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    # guest user (not logged in)
    user ||= User.new
    can :read, Event
    can :read, HomeBanner
    can :read, Category
    can :read, Community
    can :read, About
    can :read, UserProfile

    if user.user?
      can :read, Event

    elsif user.organizer?
      can :read, Event
      can [:create, :destroy, :update], Event, user_id: user.id

    elsif user.admin?
      can :manage, :all

    end

  end
end
