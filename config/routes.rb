Rails.application.routes.draw do
   devise_for :users, :controllers => {registrations: "registrations", sessions: "sessions", passwords: "passwords"}, path: 'user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  authenticate :user do
    root :to => 'dashboard#index'
    get '/setting' => 'dashboard#edit'
    post '/setting' => 'dashboard#update'
    get "download" => 'accounts#download'
    get "batch_destroy" => 'accounts#batch_destroy'
    get "destroy_informations" => 'informations#batch_destroy'
    get "batch_update" => 'informations#batch_update'
    resources :accounts
    resources :informations
    resources :abnormals
    get "download_abnormals" => 'abnormals#download'
    get "batch_destroy_ab" => 'abnormals#batch_destroy'
  end
  get "import_data" => 'accounts#import_data'
  get "get_data" => "informations#get_data"
  get "update_data" => "informations#update_data"
  get "get_setting" => "setting#get_setting"
  get "import_abnormal" => "abnormals#import"
end
