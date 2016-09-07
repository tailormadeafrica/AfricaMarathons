# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Amenities" do
    describe "Admin" do
      describe "amenities" do
        login_refinery_user

        describe "amenities list" do
          before(:each) do
            FactoryGirl.create(:amenity, :name => "UniqueTitleOne")
            FactoryGirl.create(:amenity, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.amenities_admin_amenities_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before(:each) do
            visit refinery.amenities_admin_amenities_path

            click_link "Add New Amenity"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Amenities::Amenity.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::Amenities::Amenity.count.should == 0
            end
          end

          context "duplicate" do
            before(:each) { FactoryGirl.create(:amenity, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.amenities_admin_amenities_path

              click_link "Add New Amenity"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Amenities::Amenity.count.should == 1
            end
          end

        end

        describe "edit" do
          before(:each) { FactoryGirl.create(:amenity, :name => "A name") }

          it "should succeed" do
            visit refinery.amenities_admin_amenities_path

            within ".actions" do
              click_link "Edit this amenity"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before(:each) { FactoryGirl.create(:amenity, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.amenities_admin_amenities_path

            click_link "Remove this amenity forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Amenities::Amenity.count.should == 0
          end
        end

      end
    end
  end
end
