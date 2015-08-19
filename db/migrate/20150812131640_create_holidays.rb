class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.decimal :number_of_days

      # this line adds an integer column called `profile_id`.
      t.references :profile, index: true
 
      t.timestamps null: false
    end
    add_foreign_key :holidays, :profiles
  end
end
