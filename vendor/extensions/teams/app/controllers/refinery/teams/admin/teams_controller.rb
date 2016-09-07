module Refinery
  module Teams
    module Admin
      class TeamsController < ::Refinery::AdminController

        crudify :'refinery/teams/team',
                :title_attribute => 'name', :xhr_paging => true, :per_page => 10000

      end
    end
  end
end
