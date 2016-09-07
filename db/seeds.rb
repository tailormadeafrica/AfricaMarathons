# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Refinery::Pods::Engine.load_seed

Refinery::Videos::Engine.load_seed

# Added by Refinery CMS Portfolio Engine
Refinery::Portfolio::Engine.load_seed

# Added by Refinery CMS Blog engine
Refinery::Blog::Engine.load_seed

Refinery::Banners::Engine.load_seed

# Added by Refinery CMS Inquiries engine
Refinery::Inquiries::Engine.load_seed

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Activities extension
Refinery::Activities::Engine.load_seed

# Added by Refinery CMS Accommodations extension
Refinery::Accommodations::Engine.load_seed

# Added by Refinery CMS Locations extension
Refinery::Locations::Engine.load_seed

# Added by RefineryCMS Copywriting engine
Refinery::Copywriting::Engine.load_seed

# Added by Refinery CMS Teams extension
Refinery::Teams::Engine.load_seed

# Added by Refinery CMS Amenities extension
Refinery::Amenities::Engine.load_seed

Refinery::Bookings::Engine.load_seed
