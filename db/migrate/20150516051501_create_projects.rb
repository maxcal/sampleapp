class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :email
      t.string :team_name
      t.string :team_leader
      t.references :project_type, index: true
      t.timestamps
    end
  end
end
