class Article < ActiveRecord::Base
	belongs_to :users
	belongs_to :categories
	has_many :lectures
	def self.search(search)
		where("title ILIKE ?","%#{search}%") || where("content ILIKE ?", "%#{search}%")
	end
end
