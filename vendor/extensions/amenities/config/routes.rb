Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :amenities do
    resources :amenities, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :amenities, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :amenities, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
