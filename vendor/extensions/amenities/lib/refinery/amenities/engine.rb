module Refinery
  module Amenities
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Amenities

      engine_name :refinery_amenities

      initializer "register refinerycms_amenities plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "amenities"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.amenities_admin_amenities_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/amenities/amenity',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Amenities)
      end
    end
  end
end
