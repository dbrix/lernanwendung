Rails.application.routes.draw do
  get 'welcome/index'
  #get 'benutzer/show'
  ##get 'signup', to: 'benutzer#new'
  #get 'abc', to: 'benutzer#create'#, as: 'signup'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  resources:sessions
  resources:benutzer
  get 'rechte/tutorin'
  get 'rechte/qualifizierte_tutorin'
  get 'rechte/admin'

  resources :wissensgebiete do
    resources:fachmoduls do
      resources :lernmethoden do
        resources :inhalts
      end
    end
  end

  root 'welcome#index'
end
