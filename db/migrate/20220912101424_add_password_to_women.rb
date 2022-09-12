class AddPasswordToWomen < ActiveRecord::Migration[7.0]
  def change
    add_column :women, :password, :string
  end
end
