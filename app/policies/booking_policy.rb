class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def destroy?
    return true
  end

  def index?
    return false
  end

  def show?
    return true
  end

end
