module Refinery
  module Activities
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Activities

      engine_name :refinery_activities

      initializer "register refinerycms_activities plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "activities"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.activities_admin_activities_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/activities/activity',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Activities)
      end
    end
  end
end
