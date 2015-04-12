class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :win_count
      t.integer :loss_count

      t.timestamps null: false
    end
  end
end
