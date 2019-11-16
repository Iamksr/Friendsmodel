Rails.application.routes.draw do
  devise_for :users
  resources :friendlists
  root 'friendlists#index'
  get 'my_profile' =>"friendlists#my_profile"
  get 'user_table' => "friendlists#user_table" 
   get 'friendlists/pending'
  # get 'your_profile' => "friendlists#your_profile"
  resources :users do
   member do
       get 'your_profile' => "friendlists#your_profile"
    end
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
