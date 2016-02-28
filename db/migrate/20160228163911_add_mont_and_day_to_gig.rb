class AddMontAndDayToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :monts, :string
    add_column :gigs, :days, :string
  end
end
