class AddExtraFieldsTodoctor < ActiveRecord::Migration[6.0]
  def change

    add_column :doctors, :name, :string
    add_column :doctors, :designation, :string
    add_column :doctors, :location, :string
  
  end
end
