class CreateAmenitiesAmenities < ActiveRecord::Migration

  def up
    create_table :refinery_amenities do |t|
      t.string :name
      t.integer :image_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-amenities"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/amenities/amenities"})
    end

    drop_table :refinery_amenities

  end

end
