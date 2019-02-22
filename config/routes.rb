Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get '/top' => 'homes#top'

	post '/posts' => 'posts#create'
	post '/posts/index' => 'posts#create'
	get '/posts/index' => 'posts#index'
	get '/posts/:id' => 'posts#show', as: 'post'
	get '/' => 'homes#top'
	get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
	patch '/posts/:id' => 'posts#update', as: 'update_post'
	delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'
end
