module Refinery
  class AmenitiesGenerator < Rails::Generators::Base

    def rake_db
      rake("refinery_amenities:install:migrations")
    end

    def append_load_seed_data
      create_file 'db/seeds.rb' unless File.exists?(File.join(destination_root, 'db', 'seeds.rb'))
      append_file 'db/seeds.rb', :verbose => true do
        <<-EOH

# Added by Refinery CMS Amenities extension
Refinery::Amenities::Engine.load_seed
        EOH
      end
    end
  end
end
