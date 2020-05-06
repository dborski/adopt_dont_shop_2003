FactoryBot.define do
  factory :pet do
    sequence(:name) {|n| "Animal #{n}" }
    sequence(:age) { 3 }
    sequence(:sex) {|n| "Male" }
    sequence(:img_url) { "http://img.com/1" }
    shelter
  end
end
