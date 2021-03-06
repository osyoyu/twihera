# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150326043231) do

  create_table "tweets", force: :cascade do |t|
    t.integer  "twitter_id",         limit: 8
    t.integer  "twitter_account_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.text     "raw_json"
  end

  add_index "tweets", ["twitter_account_id"], name: "index_tweets_on_twitter_account_id"

  create_table "twitter_accounts", force: :cascade do |t|
    t.integer  "twitter_id",                      limit: 8
    t.string   "screen_name"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "twitter_api_consumer_key"
    t.string   "twitter_api_consumer_secret"
    t.string   "twitter_api_access_token"
    t.string   "twitter_api_access_token_secret"
  end

end
