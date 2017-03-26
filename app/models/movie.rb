class Movie < ActiveRecord::Base
	searchkick
	belongs_to :user 
	belongs_to :category
    has_many :reviews 
    has_many :celebrities, inverse_of: :movies
	has_attached_file :image, styles: {medium: "400x600#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
