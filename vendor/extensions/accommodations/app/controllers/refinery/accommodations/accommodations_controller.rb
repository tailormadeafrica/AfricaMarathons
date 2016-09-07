module Refinery
  module Accommodations
    class AccommodationsController < ::ApplicationController

      before_filter :find_all_accommodations
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @accommodation in the line below:
        present(@page)
      end

      def show
        @accommodation = Accommodation.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @accommodation in the line below:
        present(@page)
        respond_to do |format|
          format.html
          format.js
        end
      end

    protected

      def find_all_accommodations
        @accommodations = Accommodation.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/accommodations").first
      end

    end
  end
end
