Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'about', to: 'welcome#about'
# get 'new_article', to: 'articles#new'
# get 'edit_article', to: 'articles#edit'
# get 'articles', to: 'articles'
  
  resources :articles
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
