Rails.application.routes.draw do

    scope '/api' do
        resources :leads
        resources :opportunities
        resources :tasks
        resources :contacts
        resources :notes
        resources :sessions
    end

    root 'welcome#index'

    get "/auth/:provider/callback" => 'api/sessions#create'
    
    get "*foo" => "welcome#index"

end


  
