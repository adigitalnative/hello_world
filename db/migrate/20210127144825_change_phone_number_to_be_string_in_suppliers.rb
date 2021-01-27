class ChangePhoneNumberToBeStringInSuppliers < ActiveRecord::Migration[5.2]
  def change
    change_column :suppliers, :phone_number, :string
  end
end
