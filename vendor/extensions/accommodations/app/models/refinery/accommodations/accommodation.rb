module Refinery
  module Accommodations
    class Accommodation < Refinery::Core::BaseModel
      self.table_name = 'refinery_accommodations'      
    
      acts_as_indexed :fields => [:name, :rating, :description]

      attr_accessible :name, :cover_image_id, :rating, :description, :position, :activity_ids, :location_id, :latitude, :longitude, :address, :gallery_id, :sub_name, :location_ids, :amenity_ids,
      :low_rate, :mid_rate, :high_rate, :jan, :feb, :marc, :apr, :may, :jun, :jul, :aug, :sept, :oct, :nov, :dec

      validates :name, :presence => true, :uniqueness => true
      validates :low_rate, :presence => true
      validates :high_rate, :presence => true
      validates :mid_rate, :presence => true

      RATES = %w(Low Mid High Closed)
          
      belongs_to :cover_image, :class_name => '::Refinery::Image'
      belongs_to :gallery, :class_name => '::Refinery::Portfolio::Gallery'
      # belongs_to :location, :class_name => '::Refinery::Locations::Location'
      has_and_belongs_to_many :activities, :class_name => '::Refinery::Activities::Activity', :join_table => 'refinery_activities_accommodations'
      has_and_belongs_to_many :posts, :class_name => 'Refinery::Blog::Post', :join_table => 'refinery_accommodations_posts'
      has_and_belongs_to_many :locations, :class_name => '::Refinery::Locations::Location', :join_table => 'refinery_accommodations_locations'
      has_and_belongs_to_many :amenities, :class_name => '::Refinery::Amenities::Amenity', :join_table => 'refinery_accommodations_amenities'

      default_scope { order(:position) }

    end
  end
end
