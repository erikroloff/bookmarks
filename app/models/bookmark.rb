class Bookmark < ActiveRecord::Base
	belongs_to :user
	validates :name, length: {minimum: 1}
	validates :url, length: {minimum: 1}
	validates :user_id, presence: true
end
