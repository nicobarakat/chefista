class ChefPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    return true
  end

  def new?
    create?
  end

  def show?
    return true
  end

  def index?
    return true
  end
end