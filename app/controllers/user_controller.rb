class UserController < ApplicationController
  load_and_authorize_resource only: [:index, :change_role, :change_role_update]

  before_action :set_user, only: [:change_role, :change_role_update]

  def index
    @users = User.all
  end

  def change_role
    @roles = Role.all
  end

  def change_role_update
    @user_role = @user.user_role.first
    @user_role.role_id = users_role_params[:id]
    @user_role.save
    redirect_to '/users'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:id)
  end

  def users_role_params
    params.require(:role).permit(:id)
  end
end
