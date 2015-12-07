class CreateFeaturings < ActiveRecord::Migration
  def change
    create_table :featurings do |t|
    	t.references :skier, index: true, foreign_key: :true
    	t.references :video, index: true, foreign_key: :true
    	
      t.timestamps null: false
    end
  end
end
