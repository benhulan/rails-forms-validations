class AddsAttributesToPets < ActiveRecord::Migration
  def change
     add_column :pets, :name, :string
     add_column :pets, :species, :string
     add_column :pets, :owner_id, :integer
  end
end
