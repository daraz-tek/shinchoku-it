class CreateSocialProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :social_profiles do |t|
      t.references :user, foreign_key: true
      t.string :provider, null: false
      t.string :uid, null: false
      t.text :info, null: false
      t.text :credentials, null: false
      t.text :extra, null: false

      t.timestamps null: false
    end
    add_index :social_profiles, [:provider, :uid], unique: true
  end
end
