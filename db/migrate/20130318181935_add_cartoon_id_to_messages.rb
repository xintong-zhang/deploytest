class AddCartoonIdToMessages < ActiveRecord::Migration
  def change
  add_column :messages, :cartoon_id, :integer
  end
end
