Rails.application.routes.draw do
    namespace :vlog,defaults: { format: "json" } do
      resources :vlogs,only: [:index,:show]
    end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
