Rails.application.routes.draw do
  devise_for :customers, path: '', module: 'devise/customers', skip: [:passwords]
  devise_for :admins, path: 'admin', module: 'devise/admins', skip: [:passwords, :registrations]

  namespace :admin do
    root to: 'homes#top'
  end

  scope module: :public do
    root to: 'homes#top'
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
