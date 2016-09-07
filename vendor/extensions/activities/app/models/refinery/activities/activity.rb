module Refinery
  module Activities
    class Activity < Refinery::Core::BaseModel
      self.table_name = 'refinery_activities'      
    
      acts_as_indexed :fields => [:name, :description, :rating]

      attr_accessible :name, :cover_image_id, :description, :rating, :position, :gallery_id, :sub_name, :location_ids, :accommodation_ids

      validates :name, :presence => true, :uniqueness => true
          
      belongs_to :cover_image, :class_name => '::Refinery::Image'
      belongs_to :gallery, :class_name => '::Refinery::Portfolio::Gallery'

      has_and_belongs_to_many :accommodations, :class_name => '::Refinery::Accommodations::Accommodation', :join_table => 'refinery_activities_accommodations'
      has_and_belongs_to_many :locations, :class_name => '::Refinery::Locations::Location', :join_table => 'refinery_activities_locations'
      has_and_belongs_to_many :posts, :class_name => 'Refinery::Blog::Post', :join_table => 'refinery_activities_posts'

      default_scope { order(:position) }

    end
  end
end
