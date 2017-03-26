class Celebrity < ActiveRecord::Base
	belongs_to :user
	has_many :movies, inverse_of: :movies
	has_attached_file :image, styles: {medium: "400x600#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
