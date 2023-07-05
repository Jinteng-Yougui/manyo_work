Rails.application.routes.draw do
  root "tasks#index"
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
