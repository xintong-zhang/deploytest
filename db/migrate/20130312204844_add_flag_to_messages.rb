class AddFlagToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :flag, :boolean, :default => true
  end
end
