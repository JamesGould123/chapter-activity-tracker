module StaticPagesHelper
  def user_is_admin?
      current_user.permissions == "administrator"
  end
end
