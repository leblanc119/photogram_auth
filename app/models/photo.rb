# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :text
#  image      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many :likes

  has_many :fans, :through => :likes, :source => :user

  validates :user_id, presence: true
   
end
