FactoryGirl.define do

  factory :item do
    title "Soup"
    price 25
    course "First"
    day_order Date.current
  end


end