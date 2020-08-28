FactoryBot.define do
  factory :employee do
    type { 'Engineer' }
    name { '佐々木' }
    service_years { 1 }
  end
end
