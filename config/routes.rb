Rails.application.routes.draw do





	root 'pages#home'

	get '/', to: 'pages#home'
	get '/bonjour/(:name)', to:'pages#bonjour'
	get '/user', to:'pages#show'
	get '/user/:id', to:'pages#user'
	get '/book', to: 'pages#book'
	get '/team', to: 'pages#team'
	get '/contact', to: 'pages#contact'

	post '/', to:'pages#create'

	patch 'user/:id' => 'pages#update'

	delete 'user/:id' => 'pages#destroy'
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
