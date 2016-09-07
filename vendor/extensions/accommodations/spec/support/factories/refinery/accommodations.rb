
FactoryGirl.define do
  factory :accommodation, :class => Refinery::Accommodations::Accommodation do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

