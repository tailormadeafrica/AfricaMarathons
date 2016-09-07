module Refinery
  module Accommodations
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Accommodations

      engine_name :refinery_accommodations

      initializer "register refinerycms_accommodations plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "accommodations"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.accommodations_admin_accommodations_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/accommodations/accommodation',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Accommodations)
      end
    end
  end
end
