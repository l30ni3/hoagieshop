# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_190_112_122_801) do
  create_table 'adresses', force: :cascade do |t|
    t.string 'street'
    t.integer 'number'
    t.integer 'postalCode'
    t.string 'city'
    t.string 'email'
    t.integer 'phone'
    t.boolean 'isBillingAdress'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'breads', force: :cascade do |t|
    t.integer 'bID'
    t.string 'bType'
    t.string 'bName'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'hoagies', force: :cascade do |t|
    t.integer 'hoagieID'
    t.string 'bread'
    t.string 'main1'
    t.string 'main2'
    t.string 'veggies1'
    t.string 'veggies2'
    t.string 'veggies3'
    t.string 'veggies4'
    t.string 'veggies5'
    t.string 'sauce1'
    t.string 'sauce2'
    t.date 'created'
    t.string 'user'
    t.integer 'orderID'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'mains', force: :cascade do |t|
    t.integer 'mID'
    t.string 'mType'
    t.string 'mName'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'orders', force: :cascade do |t|
    t.integer 'orderId'
    t.date 'date'
    t.integer 'userID'
    t.integer 'sumTotal'
    t.date 'estDelivery'
    t.string 'hasItems'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'paying_methods', force: :cascade do |t|
    t.string 'provider'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'roles', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'sauces', force: :cascade do |t|
    t.integer 'sID'
    t.string 'sName'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'user1s', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'surName'
    t.string 'adr'
    t.string 'payMethod'
    t.integer 'userID'
    t.string 'role'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'veggies', force: :cascade do |t|
    t.integer 'vID'
    t.string 'vName'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
