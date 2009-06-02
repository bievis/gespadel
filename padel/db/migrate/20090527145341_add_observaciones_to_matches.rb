class AddObservacionesToMatches < ActiveRecord::Migration
  def self.up
    add_column :matches, :observaciones, :text
  end

  def self.down
    remove_column :matches, :observaciones
  end
end
