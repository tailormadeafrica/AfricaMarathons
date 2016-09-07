# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Accommodations" do
    describe "Admin" do
      describe "accommodations" do
        login_refinery_user

        describe "accommodations list" do
          before(:each) do
            FactoryGirl.create(:accommodation, :name => "UniqueTitleOne")
            FactoryGirl.create(:accommodation, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.accommodations_admin_accommodations_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before(:each) do
            visit refinery.accommodations_admin_accommodations_path

            click_link "Add New Accommodation"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Accommodations::Accommodation.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::Accommodations::Accommodation.count.should == 0
            end
          end

          context "duplicate" do
            before(:each) { FactoryGirl.create(:accommodation, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.accommodations_admin_accommodations_path

              click_link "Add New Accommodation"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Accommodations::Accommodation.count.should == 1
            end
          end

        end

        describe "edit" do
          before(:each) { FactoryGirl.create(:accommodation, :name => "A name") }

          it "should succeed" do
            visit refinery.accommodations_admin_accommodations_path

            within ".actions" do
              click_link "Edit this accommodation"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before(:each) { FactoryGirl.create(:accommodation, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.accommodations_admin_accommodations_path

            click_link "Remove this accommodation forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Accommodations::Accommodation.count.should == 0
          end
        end

      end
    end
  end
end
