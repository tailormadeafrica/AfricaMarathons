# This migration comes from refinery_activities (originally 1)
class CreateActivitiesActivities < ActiveRecord::Migration

  def up
    create_table :refinery_activities do |t|
      t.string :name
      t.integer :cover_image_id
      t.text :description
      t.string :rating
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-activities"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/activities/activities"})
    end

    drop_table :refinery_activities

  end

end
