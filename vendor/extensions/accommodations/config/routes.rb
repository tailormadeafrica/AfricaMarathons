Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :accommodations do
    resources :accommodations, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :accommodations, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :accommodations, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
