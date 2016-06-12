class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :uid, null: false

      t.timestamps null: false
    end
    add_index :teams, :uid, unique: true
  end
end
