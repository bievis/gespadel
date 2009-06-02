class AddUserPassToPlayer < ActiveRecord::Migration
  def self.up
    add_column :players, :user, :string
    add_column :players, :pass, :string
  end

  def self.down
    remove_column :players, :pass
    remove_column :players, :user
  end
end
