module Refinery
  module Locations
    class Location < Refinery::Core::BaseModel
      self.table_name = 'refinery_locations'
      acts_as_nested_set
    
      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true

      attr_accessible :name, :flag_image_id, :cover_image_id, :description, :position, :activity_ids, :gallery_id, :longitude, :latitude, :sub_name, :parent_id, :lft, :rgt, :depth, :accommodation_ids, :side_body

      belongs_to :parent, :class_name => '::Refinery::Locations::Location'
      belongs_to :cover_image, :class_name => '::Refinery::Image'
      belongs_to :flag_image, :class_name => '::Refinery::Image'
      belongs_to :gallery, :class_name => '::Refinery::Portfolio::Gallery'
      # has_many :accommodations, :class_name => '::Refinery::Accommodations::Accommodation'
      has_and_belongs_to_many :activities, :class_name => '::Refinery::Activities::Activity', :join_table => 'refinery_activities_locations'
      has_and_belongs_to_many :posts, :class_name => 'Refinery::Blog::Post', :join_table => 'refinery_locations_posts'
      has_and_belongs_to_many :accommodations, :class_name => '::Refinery::Accommodations::Accommodation', :join_table => 'refinery_accommodations_locations'

      default_scope { order('lft') }

    end
  end
end
