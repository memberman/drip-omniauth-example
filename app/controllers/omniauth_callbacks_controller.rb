class OmniauthCallbacksController < ApplicationController

  protect_from_forgery except: :callback

  def callback
    render plain: request.env['omniauth.auth'].to_json
  end
end
