class Book < ApplicationRecord
	belongs_to :user
	# attachment :image
	has_many :book_comments, dependent: :destroy

	validates :title, presence: true
	validates :body, presence: true, length: {minimum: 1, maximum: 200}
	# validates :comment, presence:true
end
