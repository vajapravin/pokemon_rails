ActiveRecord::Schema.define(:version => 20140414144930) do

  create_table "pokemons", :force => true do |t|
    t.string   "name"
    t.integer  "pokedex_id"
    t.string   "img_url"
    t.string   "typs"
    t.integer  "hp_level"
    t.integer  "attack_level"
    t.integer  "defense_level"
    t.integer  "spattack_level"
    t.integer  "spdefense_level"
    t.integer  "speed_level"
    t.integer  "moves"
    t.string   "classification"
    t.float    "height"
    t.float    "weight"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

end