class CreateRefineryBannersPosts < ActiveRecord::Migration
  def self.up
    create_table :refinery_banners_posts, :id => false do |t|
      t.integer :banner_id
      t.integer :post_id
    end

    add_index :refinery_banners_posts, :banner_id
    add_index :refinery_banners_posts, :post_id

  end

  def self.down
    drop_table :refinery_banners_posts
  end
end
