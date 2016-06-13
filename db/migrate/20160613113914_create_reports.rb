class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.references :user, foreign_key: true
      t.string :title, null: false, limit: 128
      t.text :content, null: false, limit: 4096

      t.timestamps null: false
    end
  end
end
