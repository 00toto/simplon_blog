class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :ville
      t.string :departement
      t.string :place

      t.timestamps null: false
    end
  end
end
