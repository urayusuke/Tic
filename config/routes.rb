Rails.application.routes.draw do
  devise_for :users
  root "photos#index"
  resource :photos, only: [:index, :new, :create] 
end
