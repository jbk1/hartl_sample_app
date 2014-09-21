# == Schema Information
#
# Table name: microposts
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Micropost < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :content, presence: true, length: { maximum: 140 }
	validates :user_id, presence: true

	def self.from_users_followed_by(user)
		followed_user_ids = user.followed_user_ids
		where("user_id IN (?) OR user_id = ?", followed_user_ids, user)
	end
end
