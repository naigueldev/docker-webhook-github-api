Rails.application.routes.draw do
	 resource :events, only: [:create ]
	 resources :issues, only: :events do
	 	resources :events ,  only: [:index ]
	 end
end
