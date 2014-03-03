class UsersController < ApplicationController
# def set_current_user
#       @user = current_user
# end
def index
    @users = User.all
end

# def show
#   @users = User.find(params[:id])
# end

# def set_user
#   @user = User.find(params[:id])
# end

private

  #params.permit(:user).permit(:user_id, :first_name, :phone_number, :twitter_handle, :preferred_contact, :last_name, :profile, :email)

end
