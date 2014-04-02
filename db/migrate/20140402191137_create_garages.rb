class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.boolean :open, null: false, default: false
      t.string :name
      t.integer :user_id
      t.timestamps
    end
  end
end
