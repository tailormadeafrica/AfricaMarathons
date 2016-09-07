# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Activities" do
    describe "Admin" do
      describe "activities" do
        login_refinery_user

        describe "activities list" do
          before(:each) do
            FactoryGirl.create(:activity, :name => "UniqueTitleOne")
            FactoryGirl.create(:activity, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.activities_admin_activities_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before(:each) do
            visit refinery.activities_admin_activities_path

            click_link "Add New Activity"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Activities::Activity.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::Activities::Activity.count.should == 0
            end
          end

          context "duplicate" do
            before(:each) { FactoryGirl.create(:activity, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.activities_admin_activities_path

              click_link "Add New Activity"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Activities::Activity.count.should == 1
            end
          end

        end

        describe "edit" do
          before(:each) { FactoryGirl.create(:activity, :name => "A name") }

          it "should succeed" do
            visit refinery.activities_admin_activities_path

            within ".actions" do
              click_link "Edit this activity"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before(:each) { FactoryGirl.create(:activity, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.activities_admin_activities_path

            click_link "Remove this activity forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Activities::Activity.count.should == 0
          end
        end

      end
    end
  end
end
