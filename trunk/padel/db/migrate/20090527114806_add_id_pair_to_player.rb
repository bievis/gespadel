class AddIdPairToPlayer < ActiveRecord::Migration
  def self.up
    add_column :players, :id_par, :integer
  end

  def self.down
    remove_column :players, :id_par
  end
end
