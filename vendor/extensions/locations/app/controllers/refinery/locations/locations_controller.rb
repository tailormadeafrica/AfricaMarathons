module Refinery
  module Locations
    class LocationsController < ::ApplicationController

      before_filter :find_all_locations
      before_filter :find_page

      def index
        if params[:search].present?
          @all_locations = ::Refinery::Locations::Location.where("UPPER(description) LIKE '%#{params[:search].upcase}%' or UPPER(name) LIKE '%#{params[:search].upcase}%'")
          @all_accommodations = ::Refinery::Accommodations::Accommodation.where("UPPER(description) LIKE '%#{params[:search].upcase}%' or UPPER(name) LIKE '%#{params[:search].upcase}%'")
        end
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @location in the line below:
        present(@page)
      end

      def show
        @location = Location.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @location in the line below:
        present(@page)
      end

    protected

      def find_all_locations
        @locations = Location.where("parent_id IS NULL").order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/locations").first
      end

    end
  end
end
