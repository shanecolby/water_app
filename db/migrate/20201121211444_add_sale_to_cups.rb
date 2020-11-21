class AddSaleToCups < ActiveRecord::Migration[6.0]
  def change
    add_column :waters, :sale?, :boolean
  end
end
