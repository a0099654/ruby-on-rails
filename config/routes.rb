Rails.application.routes.draw do 
  get 'questions/show'

  resources :questions
  root 'home#index'
  
  get '/about' => 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/questions' => 'home#index'
  post '/answer' => 'home#index'

  get '/questions/:id' => 'home#question'
end
