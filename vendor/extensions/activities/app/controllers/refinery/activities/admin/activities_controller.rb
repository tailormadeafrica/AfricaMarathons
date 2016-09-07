module Refinery
  module Activities
    module Admin
      class ActivitiesController < ::Refinery::AdminController

        crudify :'refinery/activities/activity',
                :title_attribute => 'name', :xhr_paging => true, :per_page => 10000

      end
    end
  end
end
