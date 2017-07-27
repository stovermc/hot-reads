Rails.application.routes.draw do
  root to: 'hot_reads#index'

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :links, only: [:create, :index]
    end
  end
end
