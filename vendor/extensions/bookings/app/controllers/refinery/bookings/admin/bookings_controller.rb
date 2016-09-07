module Refinery
  module Bookings
    module Admin
      class BookingsController < Refinery::AdminController

        crudify :'refinery/bookings/booking', 
                :title_attribute => "full_name",
                :order => "created_at DESC",
                :per_page => 10000
      
        def index
          unless searching?
            find_all_bookings
          else
            search_all_bookings
          end

          @grouped_bookings = group_by_date(@bookings)
        end

      

      end
    end
  end
end
