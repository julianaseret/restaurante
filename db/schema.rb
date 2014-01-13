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

ActiveRecord::Schema.define(version: 20140108235146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bebidas", force: true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.decimal  "preco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "email"
    t.string   "endereco"
    t.date     "data_nascimento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", force: true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "email"
    t.string   "endereco"
    t.date     "data_nascimento"
    t.string   "carteira_trabalho"
    t.string   "cpf"
    t.string   "rg"
    t.decimal  "salario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pedidos", force: true do |t|
    t.integer  "clientes_id"
    t.integer  "pratos_id"
    t.integer  "bebidas_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pedidos", ["bebidas_id"], name: "index_pedidos_on_bebidas_id", using: :btree
  add_index "pedidos", ["clientes_id"], name: "index_pedidos_on_clientes_id", using: :btree
  add_index "pedidos", ["pratos_id"], name: "index_pedidos_on_pratos_id", using: :btree

  create_table "pratos", force: true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.decimal  "preco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
