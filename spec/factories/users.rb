# -*- encoding : utf-8 -*-
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "MyString"
    password_digest "MyString"
  end
end
