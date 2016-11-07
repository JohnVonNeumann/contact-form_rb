Rails.application.routes.draw do
  #GET /contact -> ContactController, index Action
  get 'contact', to: 'contact#index'
  post 'contact', to: 'contact#mail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
