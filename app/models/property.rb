class Property < ActiveRecord::Base
	self.inheritance_column = nil
	 mount_uploader :image, ImageUploader
  
	end

