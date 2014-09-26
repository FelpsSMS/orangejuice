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

ActiveRecord::Schema.define(version: 20140925225038) do

  create_table "administradors", force: true do |t|
    t.string   "administrador_nome"
    t.string   "administrador_email"
    t.string   "administrador_login"
    t.string   "administrador_senha"
    t.integer  "arquivo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "administradors", ["arquivo_id"], name: "index_administradors_on_arquivo_id"

  create_table "arquivo_tipos", force: true do |t|
    t.string   "arquivo_tipo_descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arquivos", force: true do |t|
    t.string   "arquivo_nome"
    t.string   "arquivo_formato"
    t.integer  "arquivo_tipo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "arquivos", ["arquivo_tipo_id"], name: "index_arquivos_on_arquivo_tipo_id"

  create_table "pesquisadors", force: true do |t|
    t.string   "pesquisador_nome"
    t.string   "pesquisador_cnpq"
    t.string   "pesquisador_contato"
    t.integer  "arquivo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pesquisadors", ["arquivo_id"], name: "index_pesquisadors_on_arquivo_id"

  create_table "projetos", force: true do |t|
    t.string   "projeto_titulo"
    t.text     "projeto_descricao"
    t.integer  "tematica_id"
    t.integer  "pesquisador_id"
    t.integer  "arquivo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projetos", ["arquivo_id"], name: "index_projetos_on_arquivo_id"
  add_index "projetos", ["pesquisador_id"], name: "index_projetos_on_pesquisador_id"
  add_index "projetos", ["tematica_id"], name: "index_projetos_on_tematica_id"

  create_table "tematicas", force: true do |t|
    t.string   "tematica_titulo"
    t.text     "tematica_descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
