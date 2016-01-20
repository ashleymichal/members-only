Rails.application.routes.draw do
	root						 => 'staticpages#home'
  get     'login'  => 'sessions#new'
  post    'login'  => 'sessions#create'
  delete  'logout' => 'sessions#destroy'
end
