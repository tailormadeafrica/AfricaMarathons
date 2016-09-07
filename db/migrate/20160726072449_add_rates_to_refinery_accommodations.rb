class AddRatesToRefineryAccommodations < ActiveRecord::Migration
  def change
    add_column :refinery_accommodations, :jan, :string
    add_column :refinery_accommodations, :feb, :string
    add_column :refinery_accommodations, :marc, :string
    add_column :refinery_accommodations, :apr, :string
    add_column :refinery_accommodations, :may, :string
    add_column :refinery_accommodations, :jun, :string
    add_column :refinery_accommodations, :jul, :string
    add_column :refinery_accommodations, :aug, :string
    add_column :refinery_accommodations, :sept, :string
    add_column :refinery_accommodations, :oct, :string
    add_column :refinery_accommodations, :nov, :string
    add_column :refinery_accommodations, :dec, :string
    add_column :refinery_accommodations, :low_rate, :float
    add_column :refinery_accommodations, :mid_rate, :float
    add_column :refinery_accommodations, :high_rate, :float
  end
end
