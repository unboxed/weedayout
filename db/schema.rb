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

ActiveRecord::Schema.define(:version => 20101207102538) do

  create_table "content_blocks", :force => true do |t|
    t.string   "key"
    t.text     "text_content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "toilets", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "long"
    t.string   "lat"
    t.string   "venuetype"
    t.string   "howtoaccess"
    t.boolean  "changingbench"
    t.boolean  "hoist"
    t.string   "toiletlocation"
    t.string   "whocanuse"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
    t.time     "opening_time"
    t.time     "closing_time"
  end

end
