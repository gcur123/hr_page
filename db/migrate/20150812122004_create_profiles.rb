class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :position
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
