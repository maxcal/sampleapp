class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :team, index: true
      t.references :project_type, index: true
      t.timestamps
    end
  end
end
