class AddSubNameToThreeEngines < ActiveRecord::Migration
  def change
    add_column :refinery_accommodations, :sub_name, :string
    add_column :refinery_locations, :sub_name, :string
    add_column :refinery_activities, :sub_name, :string
  end
end
