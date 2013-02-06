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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130128134347) do

  create_table "directorios", :force => true do |t|
    t.string   "nombre"
    t.string   "cargo"
    t.string   "email"
    t.string   "telefono"
    t.string   "movil"
    t.string   "foto"
    t.text     "biografia"
    t.integer  "hit"
    t.string   "resumen"
    t.string   "tipo"
    t.boolean  "ver"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "institucionals", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.text     "contenido"
    t.string   "resumen"
    t.string   "tipo"
    t.integer  "hit"
    t.integer  "anho"
    t.boolean  "ver"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "normativos", :force => true do |t|
    t.string   "nombre"
    t.string   "subtitulo"
    t.string   "resumen"
    t.integer  "anho"
    t.text     "contenido"
    t.string   "archivo"
    t.string   "tipo"
    t.integer  "hit"
    t.boolean  "ver"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notices", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.string   "resumen"
    t.text     "contenido"
    t.string   "nimage"
    t.integer  "hit"
    t.boolean  "ver"
    t.boolean  "portada"
    t.string   "pimage"
    t.string   "presumen"
    t.date     "fecha"
    t.string   "autor"
    t.integer  "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
