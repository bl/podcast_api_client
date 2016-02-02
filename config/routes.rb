Rails.application.routes.draw do
  root             'static_pages#home'
  get 'about'   => 'static_pages#about'
  get 'help'    => 'static_pages#help'
  get 'contact' => 'static_pages#contact'

  scope module: :podcast_api_client do
    scope module: :v1 do
      resources :podcasts, only: [:show]
    end
  end
end
