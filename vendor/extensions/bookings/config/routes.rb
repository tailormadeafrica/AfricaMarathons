Refinery::Core::Engine.routes.append do
  # Frontend routes
  namespace :bookings do
    resources :bookings, :path => '', :only => [:new, :create] do
      collection do
        get :thank_you
      end
    end
  end

  # Admin routes
  namespace :bookings, :path => '' do
    namespace :admin, :path => 'refinery/bookings' do
      resources :bookings, :path => '' 
      resources :settings
    end
  end
end

