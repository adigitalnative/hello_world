class AddSupplierToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :supplier
  end
end
