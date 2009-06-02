class CreatePairs < ActiveRecord::Migration
  def self.up
    create_table :pairs do |t|
      t.integer :id
      t.integer :id_play1, :null => false, :options => "CONSTRAINT fk_id_play1 REFERENCES players(id)" 
      t.integer :id_play2, :null => false, :options => "CONSTRAINT fk_id_play2 REFERENCES players(id)"
      t.integer :match_play, :default => 0
      t.integer :match_win, :default => 0
      t.integer :match_loose, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :pairs
  end
end
