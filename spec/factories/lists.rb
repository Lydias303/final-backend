FactoryGirl.define do
  factory :list do
    title "Grocery Shopping"
  end

    factory :todo do
    title "Go grocery shopping"
    association :list, factory: :list
  end
end
