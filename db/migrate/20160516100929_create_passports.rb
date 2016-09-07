class CreatePassports < ActiveRecord::Migration
  def change
    create_table :passports do |t|
      t.integer :booking_id
      t.string :title
      t.string :first_name
      t.string :surname
      t.date :date_of_birth
      t.string :passport_no
      t.date :issue_date
      t.date :expiry_date
      t.string :place_of_issue
      t.string :weight
      t.string :diet_req

      t.timestamps
    end
  end
end
