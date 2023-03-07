class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
