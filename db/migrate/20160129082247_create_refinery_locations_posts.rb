class CreateRefineryLocationsPosts < ActiveRecord::Migration
  def self.up
    create_table :refinery_locations_posts, :id => false do |t|
      t.integer :post_id
      t.integer :location_id
    end

    add_index :refinery_locations_posts, :post_id
    add_index :refinery_locations_posts, :location_id

  end

  def self.down
    drop_table :refinery_locations_posts
  end
end
