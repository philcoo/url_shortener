Rails.application.routes.draw do
	resource :url
	root 'urls#index'
	get 'url/:id'=> 'urls#show', as: 'show'
end
