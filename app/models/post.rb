class Post < ApplicationRecord
	attachment :image
	validates :title, presence: true,
    length: { minimum: 1, maximum: 20 }
	validates :weather, presence: true,
    length: { minimum: 1, maximum: 10 }
	validates :body, presence: true,
    length: { minimum: 1, maximum: 200 }
end
