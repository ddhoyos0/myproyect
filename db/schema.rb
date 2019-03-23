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

ActiveRecord::Schema.define(version: 2019_03_13_144120) do

  create_table "documentos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "cargo"
    t.string "turno"
    t.string "sexo"
    t.integer "salario"
    t.bigint "personas_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personas_id"], name: "index_empleados_on_personas_id"
  end

  create_table "marcas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "tipo_documento"
    t.string "identificacion"
    t.string "nombre"
    t.string "direccion"
    t.string "telefono"
    t.string "celular"
    t.string "correo"
    t.date "fecha_nacimiento"
    t.bigint "documento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["documento_id"], name: "index_personas_on_documento_id"
  end

  create_table "productos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "codigo_producto"
    t.string "nombre"
    t.string "unidad"
    t.integer "valor_unitario"
    t.integer "cantidad"
    t.bigint "marca_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo_producto"], name: "index_productos_on_codigo_producto", unique: true
    t.index ["marca_id"], name: "index_productos_on_marca_id"
  end

  create_table "servicios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "empleados", "personas", column: "personas_id"
  add_foreign_key "personas", "documentos"
  add_foreign_key "productos", "marcas"
end
