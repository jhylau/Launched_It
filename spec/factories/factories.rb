require 'spec_helper'

FactoryGirl.define do
  factory :app do
    codebase_url 'www.jibjabjoe.com'
    description 'the best damn app ever!!!!'
    email 'link@gmail.com'
    title 'App'
    url 'www.mystermeals.co'
  end
end

FactoryGirl.define do
  factory :comment do
    comment 'Let me tell you a story all about how...'
    email 'huckaboo@gmail.com'
    first_name 'David'
    last_name 'Thomas'
  end
end