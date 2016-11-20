FactoryGirl.define do
  factory :item do
    title "Soup"
    price 5
    course "First"
    day_order Date.current
    association :user, factory: :user
  end
end