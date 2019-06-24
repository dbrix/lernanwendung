Rails.application.routes.draw do
  get 'welcome/index'

  resources :wissensgebiete do
    resources:fachmoduls do
      resources :lernmethoden do
        resources :inhalts
      end
    end
  end

  root 'welcome#index'
end
