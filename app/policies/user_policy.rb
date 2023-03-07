class UserPolicy
  attr :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def create_admin?
    user.role.role == "admin"
  end

  def create?
    @user.role.role == 'admin'
  end

  def update?
    @user.role.role == 'admin'
  end

  def destroy?
    @user.role.role == 'admin'
  end
end