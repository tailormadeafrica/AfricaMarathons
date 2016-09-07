# This migration comes from refinery_bookings (originally 1)
class CreateBookings < ActiveRecord::Migration

  def self.up
    create_table :refinery_bookings do |t|
      t.string :full_name
      t.string :email
      t.string :telephone
      t.string :cellphone
      t.text :address
      t.boolean :dont_get_newsletters
      t.string :insurance_company
      t.string :policy_number
      t.string :emergency_number
      t.boolean :certify_personal_insurance
      t.boolean :honeymoon
      t.boolean :birthday
      t.boolean :anniversary
      t.string :birthday_who_and_when
      t.string :anniversary_who_and_where
      t.text :emergency_contacts
      t.boolean :i_accept
      t.string :i_accept_name

      t.timestamps
    end

    add_index :refinery_bookings, :id

    if (seed = Rails.root.join('db', 'seeds', 'bookings.rb')).exist?
      load(seed)
    end
  end

  def self.down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "bookings"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/bookings"})
    end

    drop_table :refinery_bookings
  end

end
