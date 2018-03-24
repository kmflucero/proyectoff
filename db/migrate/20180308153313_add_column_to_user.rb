class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :street, :string
    add_column :users, :phone, :string
    add_column :users, :comuna, :string
    add_column :users, :depto, :string
  end
end
