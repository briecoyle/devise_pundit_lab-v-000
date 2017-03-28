class NotePolicy < ApplicationPolicy
  def index?
    user.admin?
  end

  def show?
    user.admin? || record.try(:user) == user
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end
