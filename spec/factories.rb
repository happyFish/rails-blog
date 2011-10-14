Factory.define :user do |f|
  f.sequence(:email){ |n| "email#{n}@domain.com" }
  f.password "secret"
end