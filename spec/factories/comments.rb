# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  photo_id   :integer
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :comment do
    user_id 200
    photo_id 1000
    body "this is a comment"
  end
end
