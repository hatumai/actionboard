class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :name, :bio)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :current_password, :name, :bio)
  end
end