class ChangeBannerDescription < ActiveRecord::Migration
  def change
    remove_column :refinery_banners, :description
    add_column :refinery_banners, :description, :text
  end
end
