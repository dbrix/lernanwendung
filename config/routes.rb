Rails.application.routes.draw do
  get 'welcome/index'

  resources :wissensgebiete do
    resources:fachmoduls
  end

  root 'welcome#index'
end
