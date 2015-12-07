class CreateSkiers < ActiveRecord::Migration
  def change
    create_table :skiers do |t|
      t.string :name
      t.string :discipline

      t.timestamps null: false
    end
  end
end
