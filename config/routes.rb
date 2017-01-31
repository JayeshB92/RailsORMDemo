Rails.application.routes.draw do
  root to: 'home#index'

  match "index", :to => "home#index", :via => :all
  match "add_employee", :to => "home#create", :via => :post

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
