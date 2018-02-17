Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :payments do

    collection do
      get 'graph'
    end

  end

  root 'payments#index'
end
