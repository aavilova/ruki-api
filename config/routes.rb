Rails.application.routes.draw do
  resources :subscribers

  get 'title/index'
  get 'main/index'
  get 'lib/index'
  get 'read/index'
  get 'talkblock/index'

  get 'talkblock', to: 'talkblock#index'
  get 'title', to: 'title#index'
  get 'read', to: 'read#index'
  get 'lib', to: 'lib#index'
  get 'main', to: 'main#index'

  root 'main#index'

  
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :users, only: %i[index show]
    end
  end

  scope '/api/v1' do
    resources :themes
  end

  scope :api, defaults: { format: :json } do
    scope :v1 do
      devise_for :users, defaults: { format: :json }, path: '', path_names: {
        sign_in: 'login',
        sign_out: 'logout',
        registration: 'signup'
      },
      controllers: {
        sessions: 'api/v1/users/sessions',
        registrations: 'api/v1/users/registrations'
      }
    end
  end
end