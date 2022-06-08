Rails.application.routes.draw do
  resources :locations do
    resources :reviews
  end

  root to: "locations#index"
end
