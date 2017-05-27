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

class Comment < ApplicationRecord

belongs_to :photo
belongs_to :user

validates :user_id, presence: true
validates :photo_id, presence: true
validates :body, presence: true

end
