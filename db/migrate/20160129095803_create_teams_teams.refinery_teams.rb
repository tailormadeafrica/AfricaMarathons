# This migration comes from refinery_teams (originally 1)
class CreateTeamsTeams < ActiveRecord::Migration

  def up
    create_table :refinery_teams do |t|
      t.string :name
      t.string :title
      t.integer :image_id
      t.text :body
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-teams"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/teams/teams"})
    end

    drop_table :refinery_teams

  end

end
