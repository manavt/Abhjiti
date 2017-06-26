Rails.application.routes.draw do
 resources :users do
   collection do
     get :login_form
     post :sign_in
     get :logout
   end
 end #, only: [:index, :create]
 root to: "users#login_form"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
