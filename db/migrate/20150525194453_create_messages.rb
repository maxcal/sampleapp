class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :discussable, index: true
      t.string :discussable_type
      t.text :body
      t.timestamps
    end
  end
end
