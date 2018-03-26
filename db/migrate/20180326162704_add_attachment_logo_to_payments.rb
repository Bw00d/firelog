class AddAttachmentLogoToPayments < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :payments, :logo
  end
end
