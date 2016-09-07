module Refinery
  module Amenities
    class AmenitiesController < ::ApplicationController

      before_filter :find_all_amenities
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @amenity in the line below:
        present(@page)
      end

      def show
        @amenity = Amenity.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @amenity in the line below:
        present(@page)
      end

    protected

      def find_all_amenities
        @amenities = Amenity.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/amenities").first
      end

    end
  end
end
