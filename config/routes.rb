Rails.application.routes.draw do
  root 'greetings#index'
  
  namespace :api do
    resources :greetings do
      collection do
        get 'random'
      end
    end
  end
end
