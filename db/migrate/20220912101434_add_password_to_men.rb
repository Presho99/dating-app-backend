class AddPasswordToMen < ActiveRecord::Migration[7.0]
  def change
    add_column :men, :password, :string
  end
end
