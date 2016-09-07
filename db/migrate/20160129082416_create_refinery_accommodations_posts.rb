class CreateRefineryAccommodationsPosts < ActiveRecord::Migration
  def self.up
    create_table :refinery_accommodations_posts, :id => false do |t|
      t.integer :post_id
      t.integer :accommodation_id
    end

    add_index :refinery_accommodations_posts, :post_id
    add_index :refinery_accommodations_posts, :accommodation_id

  end

  def self.down
    drop_table :refinery_accommodations_posts
  end
end
