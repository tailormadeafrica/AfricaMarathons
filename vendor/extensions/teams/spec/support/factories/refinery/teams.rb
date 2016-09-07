
FactoryGirl.define do
  factory :team, :class => Refinery::Teams::Team do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

