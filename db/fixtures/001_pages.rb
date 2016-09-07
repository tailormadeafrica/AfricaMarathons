::Refinery::Page.delete_all

home_page = Refinerycms::PageSeeder::Seeder.create_page('Home', :deletable => false, :link_url => "/", :show_in_menu => true,)
if home_page.present?
 page_not_found_page = home_page.children.create(:title => "Page not found", :menu_match => "^/404$", :show_in_menu => false, :deletable => false)
 page_not_found_page.parts.create({:title => "Body", :body => "<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href='/'>Return to the home page</a></p>", :position => 0 })
end

Refinerycms::PageSeeder::Seeder.create_page('Blogs', :deletable => false, :show_in_menu => true, :link_url => "/blog")

contact_us_page = Refinerycms::PageSeeder::Seeder.create_page('Contact Us', :link_url => "/contact", :menu_match => "^/(inquiries|contact).*$", :deletable => false, :show_in_menu => true)
if contact_us_page.present?
 thank_you_page = contact_us_page.children.create({:title => "Thank You", :link_url => "/contact/thank_you", :menu_match => "^/(inquiries|contact)/thank_you$", :show_in_menu => false, :deletable => false})
 thank_you_page.parts.create({:title => "Body", :body => "<p>We've received your inquiry and will get back to you with a response shortly.</p><p><a href='/'>Return to the home page</a></p>"})
end