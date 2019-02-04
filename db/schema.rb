# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "comments", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "corrections", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolios", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.string   "name"
    t.string   "user_name"
    t.string   "user_images_url"
    t.string   "site_url"
    t.string   "image_urls"
    t.string   "comments"
    t.string   "corrections"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolios_comments", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean  "myself"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolios_corrections", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean  "myself"
    t.string   "correction"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.string   "name"
    t.string   "category"
    t.string   "status"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
