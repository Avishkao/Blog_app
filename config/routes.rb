Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :articles
      resources :users do
        post :share_article, on: :collection
      end
    end
  end
end
