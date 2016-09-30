# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20160927065136) do

  create_table "flights", :force => true do |t|
    t.string   "airline_and_flight_no"
    t.string   "departure_airport"
    t.datetime "departure"
    t.string   "arrival_airport"
    t.datetime "arrival"
    t.integer  "booking_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "passports", :force => true do |t|
    t.integer  "booking_id"
    t.string   "title"
    t.string   "first_name"
    t.string   "surname"
    t.date     "date_of_birth"
    t.string   "passport_no"
    t.date     "issue_date"
    t.date     "expiry_date"
    t.string   "place_of_issue"
    t.string   "weight"
    t.string   "diet_req"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "refinery_accommodations", :force => true do |t|
    t.string   "name"
    t.integer  "cover_image_id"
    t.string   "rating"
    t.text     "description"
    t.integer  "position"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "location_id"
    t.integer  "gallery_id"
    t.string   "latitude"
    t.string   "longitude"
    t.text     "address"
    t.string   "sub_name"
    t.string   "jan"
    t.string   "feb"
    t.string   "marc"
    t.string   "apr"
    t.string   "may"
    t.string   "jun"
    t.string   "jul"
    t.string   "aug"
    t.string   "sept"
    t.string   "oct"
    t.string   "nov"
    t.string   "dec"
    t.float    "low_rate"
    t.float    "mid_rate"
    t.float    "high_rate"
  end

  create_table "refinery_accommodations_amenities", :id => false, :force => true do |t|
    t.integer "amenity_id"
    t.integer "accommodation_id"
  end

  add_index "refinery_accommodations_amenities", ["accommodation_id"], :name => "index_refinery_accommodations_amenities_on_accommodation_id"
  add_index "refinery_accommodations_amenities", ["amenity_id"], :name => "index_refinery_accommodations_amenities_on_amenity_id"

  create_table "refinery_accommodations_locations", :id => false, :force => true do |t|
    t.integer "location_id"
    t.integer "accommodation_id"
  end

  add_index "refinery_accommodations_locations", ["accommodation_id"], :name => "index_refinery_accommodations_locations_on_accommodation_id"
  add_index "refinery_accommodations_locations", ["location_id"], :name => "index_refinery_accommodations_locations_on_location_id"

  create_table "refinery_accommodations_posts", :id => false, :force => true do |t|
    t.integer "post_id"
    t.integer "accommodation_id"
  end

  add_index "refinery_accommodations_posts", ["accommodation_id"], :name => "index_refinery_accommodations_posts_on_accommodation_id"
  add_index "refinery_accommodations_posts", ["post_id"], :name => "index_refinery_accommodations_posts_on_post_id"

  create_table "refinery_activities", :force => true do |t|
    t.string   "name"
    t.integer  "cover_image_id"
    t.text     "description"
    t.string   "rating"
    t.integer  "position"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "gallery_id"
    t.string   "sub_name"
  end

  create_table "refinery_activities_accommodations", :id => false, :force => true do |t|
    t.integer "activity_id"
    t.integer "accommodation_id"
  end

  add_index "refinery_activities_accommodations", ["accommodation_id"], :name => "index_refinery_activities_accommodations_on_accommodation_id"
  add_index "refinery_activities_accommodations", ["activity_id"], :name => "index_refinery_activities_accommodations_on_activity_id"

  create_table "refinery_activities_locations", :id => false, :force => true do |t|
    t.integer "activity_id"
    t.integer "location_id"
  end

  add_index "refinery_activities_locations", ["activity_id"], :name => "index_refinery_activities_locations_on_activity_id"
  add_index "refinery_activities_locations", ["location_id"], :name => "index_refinery_activities_locations_on_location_id"

  create_table "refinery_activities_posts", :id => false, :force => true do |t|
    t.integer "post_id"
    t.integer "activity_id"
  end

  add_index "refinery_activities_posts", ["activity_id"], :name => "index_refinery_activities_posts_on_activity_id"
  add_index "refinery_activities_posts", ["post_id"], :name => "index_refinery_activities_posts_on_post_id"

  create_table "refinery_amenities", :force => true do |t|
    t.string   "name"
    t.integer  "image_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_banners", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "image_id"
    t.string   "url"
    t.boolean  "is_active"
    t.date     "start_date"
    t.date     "expiry_date"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "refinery_banners_pages", :id => false, :force => true do |t|
    t.integer "page_id"
    t.integer "banner_id"
  end

  add_index "refinery_banners_pages", ["banner_id"], :name => "index_refinery_banners_pages_on_banner_id"
  add_index "refinery_banners_pages", ["page_id"], :name => "index_refinery_banners_pages_on_page_id"

  create_table "refinery_banners_posts", :id => false, :force => true do |t|
    t.integer "banner_id"
    t.integer "post_id"
  end

  add_index "refinery_banners_posts", ["banner_id"], :name => "index_refinery_banners_posts_on_banner_id"
  add_index "refinery_banners_posts", ["post_id"], :name => "index_refinery_banners_posts_on_post_id"

  create_table "refinery_blog_categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "cached_slug"
    t.string   "slug"
  end

  add_index "refinery_blog_categories", ["id"], :name => "index_refinery_blog_categories_on_id"
  add_index "refinery_blog_categories", ["slug"], :name => "index_refinery_blog_categories_on_slug"

  create_table "refinery_blog_categories_blog_posts", :force => true do |t|
    t.integer "blog_category_id"
    t.integer "blog_post_id"
  end

  add_index "refinery_blog_categories_blog_posts", ["blog_category_id", "blog_post_id"], :name => "index_blog_categories_blog_posts_on_bc_and_bp"

  create_table "refinery_blog_comments", :force => true do |t|
    t.integer  "blog_post_id"
    t.boolean  "spam"
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.string   "state"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "refinery_blog_comments", ["id"], :name => "index_refinery_blog_comments_on_id"

  create_table "refinery_blog_posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "draft"
    t.datetime "published_at"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "user_id"
    t.string   "cached_slug"
    t.string   "custom_url"
    t.text     "custom_teaser"
    t.string   "source_url"
    t.string   "source_url_title"
    t.integer  "access_count",     :default => 0
    t.string   "slug"
    t.integer  "image_id"
  end

  add_index "refinery_blog_posts", ["access_count"], :name => "index_refinery_blog_posts_on_access_count"
  add_index "refinery_blog_posts", ["id"], :name => "index_refinery_blog_posts_on_id"
  add_index "refinery_blog_posts", ["slug"], :name => "index_refinery_blog_posts_on_slug"

  create_table "refinery_bookings", :force => true do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "telephone"
    t.string   "cellphone"
    t.text     "address"
    t.boolean  "dont_get_newsletters"
    t.string   "insurance_company"
    t.string   "policy_number"
    t.string   "emergency_number"
    t.boolean  "certify_personal_insurance"
    t.boolean  "honeymoon"
    t.boolean  "birthday"
    t.boolean  "anniversary"
    t.string   "birthday_who_and_when"
    t.string   "anniversary_who_and_where"
    t.text     "emergency_contacts"
    t.boolean  "i_accept"
    t.string   "i_accept_name"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "refinery_bookings", ["id"], :name => "index_refinery_bookings_on_id"

  create_table "refinery_copywriting_phrase_translations", :force => true do |t|
    t.integer  "refinery_copywriting_phrase_id"
    t.string   "locale"
    t.text     "value"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "refinery_copywriting_phrase_translations", ["locale"], :name => "index_copywriting_phrase_translations_on_locale"
  add_index "refinery_copywriting_phrase_translations", ["refinery_copywriting_phrase_id"], :name => "index_c8fbec01a288d0aef8ba987126084c4d06953304"

  create_table "refinery_copywriting_phrases", :force => true do |t|
    t.string   "name"
    t.text     "default"
    t.text     "value"
    t.string   "scope"
    t.integer  "page_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "phrase_type"
    t.date     "last_access_at"
  end

  add_index "refinery_copywriting_phrases", ["name", "scope"], :name => "index_copywriting_phrases_on_name_and_scope"

  create_table "refinery_images", :force => true do |t|
    t.string   "image_mime_type"
    t.string   "image_name"
    t.integer  "image_size"
    t.integer  "image_width"
    t.integer  "image_height"
    t.string   "image_uid"
    t.string   "image_ext"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "refinery_inquiries_inquiries", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.boolean  "spam",       :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "refinery_inquiries_inquiries", ["id"], :name => "index_refinery_inquiries_inquiries_on_id"

  create_table "refinery_locations", :force => true do |t|
    t.string   "name"
    t.integer  "cover_image_id"
    t.text     "description"
    t.integer  "position"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "gallery_id"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "sub_name"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.text     "side_body"
    t.integer  "flag_image_id"
    t.string   "slug"
  end

  create_table "refinery_locations_posts", :id => false, :force => true do |t|
    t.integer "post_id"
    t.integer "location_id"
  end

  add_index "refinery_locations_posts", ["location_id"], :name => "index_refinery_locations_posts_on_location_id"
  add_index "refinery_locations_posts", ["post_id"], :name => "index_refinery_locations_posts_on_post_id"

  create_table "refinery_page_part_translations", :force => true do |t|
    t.integer  "refinery_page_part_id"
    t.string   "locale"
    t.text     "body"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "refinery_page_part_translations", ["locale"], :name => "index_refinery_page_part_translations_on_locale"
  add_index "refinery_page_part_translations", ["refinery_page_part_id"], :name => "index_f9716c4215584edbca2557e32706a5ae084a15ef"

  create_table "refinery_page_parts", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_parts", ["id"], :name => "index_refinery_page_parts_on_id"
  add_index "refinery_page_parts", ["refinery_page_id"], :name => "index_refinery_page_parts_on_refinery_page_id"

  create_table "refinery_page_translations", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "locale"
    t.string   "title"
    t.string   "custom_slug"
    t.string   "menu_title"
    t.string   "slug"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_translations", ["locale"], :name => "index_refinery_page_translations_on_locale"
  add_index "refinery_page_translations", ["refinery_page_id"], :name => "index_d079468f88bff1c6ea81573a0d019ba8bf5c2902"

  create_table "refinery_pages", :force => true do |t|
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.boolean  "show_in_menu",        :default => true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           :default => true
    t.boolean  "draft",               :default => false
    t.boolean  "skip_to_first_child", :default => false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "view_template"
    t.string   "layout_template"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "refinery_pages", ["depth"], :name => "index_refinery_pages_on_depth"
  add_index "refinery_pages", ["id"], :name => "index_refinery_pages_on_id"
  add_index "refinery_pages", ["lft"], :name => "index_refinery_pages_on_lft"
  add_index "refinery_pages", ["parent_id"], :name => "index_refinery_pages_on_parent_id"
  add_index "refinery_pages", ["rgt"], :name => "index_refinery_pages_on_rgt"

  create_table "refinery_pages_pods", :id => false, :force => true do |t|
    t.integer "page_id"
    t.integer "pod_id"
  end

  add_index "refinery_pages_pods", ["page_id"], :name => "index_refinery_pages_pods_on_page_id"
  add_index "refinery_pages_pods", ["pod_id"], :name => "index_refinery_pages_pods_on_pod_id"

  create_table "refinery_pods", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.string   "url"
    t.integer  "image_id"
    t.string   "pod_type"
    t.integer  "portfolio_entry_id"
    t.integer  "video_id"
    t.integer  "position"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "refinery_pods", ["image_id"], :name => "index_refinery_pods_on_image_id"
  add_index "refinery_pods", ["pod_type"], :name => "index_refinery_pods_on_pod_type"
  add_index "refinery_pods", ["portfolio_entry_id"], :name => "index_refinery_pods_on_portfolio_entry_id"
  add_index "refinery_pods", ["video_id"], :name => "index_refinery_pods_on_video_id"

  create_table "refinery_portfolio_galleries", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_portfolio_gallery_translations", :force => true do |t|
    t.integer  "refinery_portfolio_gallery_id"
    t.string   "locale"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "refinery_portfolio_gallery_translations", ["locale"], :name => "index_refinery_portfolio_gallery_translations_on_locale"
  add_index "refinery_portfolio_gallery_translations", ["refinery_portfolio_gallery_id"], :name => "index_dacf6685c3221de568049c599f2a69d1c1f9dd25"

  create_table "refinery_portfolio_item_translations", :force => true do |t|
    t.integer  "refinery_portfolio_item_id"
    t.string   "locale"
    t.string   "title"
    t.text     "caption"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "refinery_portfolio_item_translations", ["locale"], :name => "index_refinery_portfolio_item_translations_on_locale"
  add_index "refinery_portfolio_item_translations", ["refinery_portfolio_item_id"], :name => "index_2f72df747b84672dbcc6cb153c8031486c5de521"

  create_table "refinery_portfolio_items", :force => true do |t|
    t.string   "title"
    t.string   "caption"
    t.integer  "image_id",   :null => false
    t.integer  "gallery_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "position"
  end

  create_table "refinery_resources", :force => true do |t|
    t.string   "file_mime_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_uid"
    t.string   "file_ext"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "refinery_roles", :force => true do |t|
    t.string "title"
  end

  create_table "refinery_roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "refinery_roles_users", ["role_id", "user_id"], :name => "index_refinery_roles_users_on_role_id_and_user_id"
  add_index "refinery_roles_users", ["user_id", "role_id"], :name => "index_refinery_roles_users_on_user_id_and_role_id"

  create_table "refinery_settings", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.boolean  "destroyable",     :default => true
    t.string   "scoping"
    t.boolean  "restricted",      :default => false
    t.string   "form_value_type"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "refinery_settings", ["name"], :name => "index_refinery_settings_on_name"

  create_table "refinery_teams", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "image_id"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_user_plugins", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "refinery_user_plugins", ["name"], :name => "index_refinery_user_plugins_on_name"
  add_index "refinery_user_plugins", ["user_id", "name"], :name => "index_refinery_user_plugins_on_user_id_and_name", :unique => true

  create_table "refinery_users", :force => true do |t|
    t.string   "username",               :null => false
    t.string   "email",                  :null => false
    t.string   "encrypted_password",     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.datetime "remember_created_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "refinery_users", ["id"], :name => "index_refinery_users_on_id"

  create_table "refinery_videos", :force => true do |t|
    t.string   "name"
    t.string   "youtube_url"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "seo_meta", :force => true do |t|
    t.integer  "seo_meta_id"
    t.string   "seo_meta_type"
    t.string   "browser_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "seo_meta", ["id"], :name => "index_seo_meta_on_id"
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], :name => "index_seo_meta_on_seo_meta_id_and_seo_meta_type"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], :name => "taggings_idx", :unique => true

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  add_index "tags", ["name"], :name => "index_tags_on_name", :unique => true

end
