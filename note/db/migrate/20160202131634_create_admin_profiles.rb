class CreateAdminProfiles < ActiveRecord::Migration
  def change
    create_table :admin_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :gsm
      t.references :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
