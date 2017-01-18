class AddNameAndAddressAndphoneAndEmailToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :name, :text
    add_column :contacts, :address, :text
    add_column :contacts, :phone, :text
    add_column :contacts, :email, :text
  end
end
