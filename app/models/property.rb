class Property < ActiveRecord::Base
	self.inheritance_column = nil
	 mount_uploader :image, ImageUploader
	 mount_uploader :image1, Image1Uploader
	 mount_uploader :image2, Image2Uploader
	 mount_uploader :image3, Image3Uploader
	 geocoded_by :address
	 after_validation :geocode
	 validates :name, presence: true, length: { maximum: 20 }
  	validates_presence_of :prize, :bed, :bath, :type
  
	end

