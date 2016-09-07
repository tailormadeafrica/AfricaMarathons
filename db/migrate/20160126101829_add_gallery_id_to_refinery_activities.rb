class AddGalleryIdToRefineryActivities < ActiveRecord::Migration
  def change
    add_column :refinery_activities, :gallery_id, :integer
  end
end
