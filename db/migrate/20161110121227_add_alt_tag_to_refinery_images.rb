class AddAltTagToRefineryImages < ActiveRecord::Migration
  def change
    add_column :refinery_images, :alt_tag, :string
  end
end
