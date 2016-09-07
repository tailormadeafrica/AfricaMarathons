class CreateAccommodationsAccommodations < ActiveRecord::Migration

  def up
    create_table :refinery_accommodations do |t|
      t.string :name
      t.integer :cover_image_id
      t.string :rating
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-accommodations"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/accommodations/accommodations"})
    end

    drop_table :refinery_accommodations

  end

end
