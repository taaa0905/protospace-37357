class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @prototypes =user.prototypes
    @user = User.find(user[:id])
  end

  private

  def user_params
    params.permit(:name, :email, :encrypted_password, :profile, :occupation, :position)
  end
end
