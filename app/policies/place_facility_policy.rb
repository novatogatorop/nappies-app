class PlaceFacilityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def destroy?
    true
  end

  private

  def user_or_admin?
    record.user == user || user.admin
  end
end
