class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.integer :post_id
      t.text :text

      t.timestamps null: false
    end
  end
end
