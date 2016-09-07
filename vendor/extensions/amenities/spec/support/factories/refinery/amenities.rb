
FactoryGirl.define do
  factory :amenity, :class => Refinery::Amenities::Amenity do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

