class PlaceFacilityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user: user)
    end
  end

  def create?
    user == @user
  end

  def destroy?
    user == @user
  end
end
