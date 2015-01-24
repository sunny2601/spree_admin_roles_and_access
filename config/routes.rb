Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :roles, :except => [:show]
  end
end
