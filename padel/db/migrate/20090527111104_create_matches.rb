class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.integer :id
      t.integer :id_par1
      t.integer :id_par2
      t.integer :set1_par1
      t.integer :set1_par2
      t.integer :set2_par1
      t.integer :set2_par2
      t.integer :set3_par1
      t.integer :set3_par2

      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
