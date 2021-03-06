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

ActiveRecord::Schema.define(version: 20170825204750) do

  create_table "bibliotecas", force: :cascade do |t|
    t.string "nombre"
    t.integer "tematica"
    t.integer "pisos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deportes", force: :cascade do |t|
    t.string "nombre_entrenador"
    t.integer "num_integrantes"
    t.text "tipo_depo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.text "carrera"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libros", force: :cascade do |t|
    t.string "titulo"
    t.integer "iso"
    t.text "resumen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesors", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.text "depto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "nombre"
    t.integer "num_local"
    t.text "tipo_comida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universidads", force: :cascade do |t|
    t.string "nombre"
    t.text "ciudad"
    t.integer "num_sedes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
