class CreateWomans < ActiveRecord::Migration[7.0]
  def change
    create_table :women do |t|
      t.string :username
      t.integer :age
      t.string :gender
      t.string :job
      t.string :location
      t.string :horoscope
      end
  end
end
