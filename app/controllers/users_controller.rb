class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # debugger
  end

  def search
    # debugger
    @user = current_user

    @friends = current_user.friends

    @friends_srch = nil
    if params[:friend].present?
      @friends_srch = User.search(params[:friend])
      # debugger

      if !@friends_srch.empty?
        # debugger
        render "users/my_friends"
      else
        flash[:alert] = "No User Found"
        redirect_to my_friends_path
      end
    else
      flash[:alert] = "Please enter a user to search"
      redirect_to my_friends_path
    end
  end

  
  def remove_image
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.purge_later
    redirect_back(fallback_location: request.referer)
  end

  
  private

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:post).permit(:username, :avatar, images: [])
  end
  
  # def user_params
  #   params.require(:user).permit(:username, :email, :password, :admin, :bio, :avatar, :content, images: [])
  # end
end
