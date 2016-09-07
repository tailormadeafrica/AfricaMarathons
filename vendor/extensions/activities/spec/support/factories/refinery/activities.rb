
FactoryGirl.define do
  factory :activity, :class => Refinery::Activities::Activity do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

