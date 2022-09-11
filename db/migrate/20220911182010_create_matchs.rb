class CreateMatchs < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.integer :percentage
      t.integer :woman_id
      t.integer :man_id
      end
      
  end
end
