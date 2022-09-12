class ChangeMenDetails < ActiveRecord::Migration[7.0]
  def change
    remove_column :men, :horoscope
    rename_column :men, :username, :first_name
    rename_column :men, :age, :birth
    rename_column :men, :location, :city
    change_column :men, :birth, :string

  end
end
