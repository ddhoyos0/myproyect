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

ActiveRecord::Schema.define(version: 2019_03_27_021840) do

  create_table "cita", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "servicio_id"
    t.bigint "empleado_id"
    t.datetime "fecha"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empleado_id"], name: "index_cita_on_empleado_id"
    t.index ["servicio_id"], name: "index_cita_on_servicio_id"
    t.index ["user_id"], name: "index_cita_on_user_id"
  end

  create_table "documentos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "cargo"
    t.bigint "persona_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["persona_id"], name: "index_empleados_on_persona_id"
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
    t.datetime "duracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cita", "empleados"
  add_foreign_key "cita", "servicios"
  add_foreign_key "cita", "users"
  add_foreign_key "empleados", "personas"
  add_foreign_key "personas", "documentos"
  add_foreign_key "productos", "marcas"
end
