class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :desc
      t.integer :manager_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
