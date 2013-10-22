Injection::Application.routes.draw do
  resources :users do
    collection do
      post 'login'
    end
  end
  root :to => "users#loginForm"
end
