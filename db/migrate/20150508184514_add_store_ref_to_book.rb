class AddStoreRefToBook < ActiveRecord::Migration
  def change
    add_reference :books, :store, index: true
  end
end
