Rails.application.routes.draw do
  resources :cities do
    resources :reviews
  end
end
