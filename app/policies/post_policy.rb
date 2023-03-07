class PostPolicy
  attr :user, :post

  def initialize(user, post)
    @user = user
    @post = post
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