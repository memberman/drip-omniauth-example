Rails.application.routes.draw do

  # Login
  # Oauth callback bypasses subdomain, uses state param to track tenant
  get 'logout',  to: 'sessions#destroy',  as: 'logout'
  get 'auth/:provider/callback', to: 'omniauth_callbacks#callback'
  post 'auth/:provider/callback', to: 'omniauth_callbacks#callback'


  # Pages
  %w(home login).each do |page|
    get page, to: 'pages#show', id: page
  end

  root to: 'pages#home'

end
