FactoryBot.define do
  factory :pet do
    sequence(:name) {|n| "Animal #{n}" }
    sequence(:age) { |n| 1 + n }
    sequence(:sex) {|n| "Male" }
    sequence(:img_url) { |n| "http://img.com/#{1 + n}" }
    shelter
  end
end
