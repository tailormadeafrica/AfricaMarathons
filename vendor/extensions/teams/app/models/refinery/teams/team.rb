module Refinery
  module Teams
    class Team < Refinery::Core::BaseModel
      self.table_name = 'refinery_teams'      
    
      acts_as_indexed :fields => [:name, :title, :body]

      validates :name, :presence => true, :uniqueness => true

      attr_accessible :name, :title, :image_id, :body, :position
          
      belongs_to :image, :class_name => '::Refinery::Image'

      default_scope { order(:position) }

    end
  end
end
