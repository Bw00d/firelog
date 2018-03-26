class Payment < ApplicationRecord
	has_attached_file :logo, :styles => { :thumb => "60x60>", :tiny => "15x15" }, :default_url => "/images/silouhette.png", dependent: :destroy
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/

end
