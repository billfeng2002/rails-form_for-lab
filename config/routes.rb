Rails.application.routes.draw do
  resources :school_classes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new, :create, :show, :edit, :update]
  resources :school_class, only: [:index, :new, :create, :show, :edit, :update]

end
