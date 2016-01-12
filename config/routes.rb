Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  root to: 'articles#index'
  resources :articles do  
    resources :comments
  end
end
