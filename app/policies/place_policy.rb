class PlacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all

      # Display only owner's places
      # scope.where(user: user)
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    user_or_admin?
  end

  def edit?
    user_or_admin?
  end

  def update?
    user_or_admin?
  end

  def destroy?
    user_or_admin?
  end

  private

  def user_or_admin?
    record.user == user || user.admin
  end
end
