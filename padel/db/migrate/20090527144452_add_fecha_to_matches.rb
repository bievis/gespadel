class AddFechaToMatches < ActiveRecord::Migration
  def self.up
    add_column :matches, :fecha, :date
  end

  def self.down
    remove_column :matches, :fecha
  end
end
