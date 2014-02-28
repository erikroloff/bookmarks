class Bookmark < ActiveRecord::Base
	validates :name, length: {minimum: 1}
	validates :url, length: {minimum: 1}
end
