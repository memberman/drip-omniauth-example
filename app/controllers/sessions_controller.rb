class SessionsController < ApplicationController
  skip_before_action :authenticate_user!

  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, notice: 'You have signed out successfully'
  end

end
