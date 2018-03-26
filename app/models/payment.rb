class Payment < ApplicationRecord
	has_attached_file :logo, :styles => { :thumb => "50x50>" }, :default_url => "/images/silouhette.png", dependent: :destroy
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
