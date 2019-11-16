class Friendlist < ApplicationRecord
	 mount_uploader :image, ImageUploader
	  mount_uploader :imagebg, ImageUploader
	belongs_to :user
	belongs_to :friend, class_name: "User"
end
