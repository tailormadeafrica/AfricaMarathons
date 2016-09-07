module Refinery
  module Amenities
    class Amenity < Refinery::Core::BaseModel
      self.table_name = 'refinery_amenities'      
    
      acts_as_indexed :fields => [:name]

      attr_accessible :name, :image_id, :position

      validates :name, :presence => true, :uniqueness => true
          
      belongs_to :image, :class_name => '::Refinery::Image'

      has_and_belongs_to_many :accommodations, :class_name => '::Refinery::Accommodations::Accommodation', :join_table => 'refinery_accommodations_amenities'

      default_scope { order(:position) }

    end
  end
end
