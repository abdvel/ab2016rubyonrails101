class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :gsm
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
