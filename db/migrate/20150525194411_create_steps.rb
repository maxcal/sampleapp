class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.belongs_to :item, index: true
      t.string :name
      t.timestamps
    end
  end
end
