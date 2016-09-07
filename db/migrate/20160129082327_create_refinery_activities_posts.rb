class CreateRefineryActivitiesPosts < ActiveRecord::Migration
  def self.up
    create_table :refinery_activities_posts, :id => false do |t|
      t.integer :post_id
      t.integer :activity_id
    end

    add_index :refinery_activities_posts, :post_id
    add_index :refinery_activities_posts, :activity_id

  end

  def self.down
    drop_table :refinery_activities_posts
  end
end
