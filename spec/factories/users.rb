FactoryBot.define do
  factory :admin_user, class: User do
    email { "sdmin@example.com" }
    password { "foobar" }
    admin { 1 }
  end

  factory :other_user, class: User do
    email { "otther@example.com" }
    password { "foobar" }
    admin { 0 }
  end
end
