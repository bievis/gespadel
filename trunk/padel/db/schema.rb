# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090527145341) do

  create_table "matches", :force => true do |t|
    t.integer  "id_par1",       :limit => 11
    t.integer  "id_par2",       :limit => 11
    t.integer  "set1_par1",     :limit => 11
    t.integer  "set1_par2",     :limit => 11
    t.integer  "set2_par1",     :limit => 11
    t.integer  "set2_par2",     :limit => 11
    t.integer  "set3_par1",     :limit => 11
    t.integer  "set3_par2",     :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "fecha"
    t.text     "observaciones"
  end

  create_table "pairs", :force => true do |t|
    t.integer  "id_play1",    :limit => 11,                :null => false
    t.integer  "id_play2",    :limit => 11,                :null => false
    t.integer  "match_play",  :limit => 11, :default => 0
    t.integer  "match_win",   :limit => 11, :default => 0
    t.integer  "match_loose", :limit => 11, :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user"
    t.string   "pass"
    t.integer  "id_par",     :limit => 11
  end

end
