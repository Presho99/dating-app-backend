class ChangeWomenDetails < ActiveRecord::Migration[7.0]
  def change
    remove_column :women, :horoscope
    rename_column :women, :username, :first_name
    rename_column :women, :age, :birth
    rename_column :women, :location, :city
    change_column :women, :birth, :string

  end
end
