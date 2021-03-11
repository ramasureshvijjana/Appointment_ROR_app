ActiveRecord::Schema.define(:version => 2021_02_18_182040) do

  create_table "active_storage_attachments", :force => :cascade do |t|
    t.string "name", :null => false
    t.string "record_type", :null => false
    t.integer "record_id", :null => false
    t.integer "blob_id", :null => false
    t.datetime "created_at", :null => false
    t.index ["blob_id"], :name => "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], :name => "index_active_storage_attachments_uniqueness", :unique => true
  end

  create_table "active_storage_blobs", :force => :cascade do |t|
    t.string "key", :null => false
    t.string "filename", :null => false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", :null => false
    t.string "checksum", :null => false
    t.datetime "created_at", :null => false
    t.index ["key"], :name => "index_active_storage_blobs_on_key", :unique => true
  end

  create_table "doctor_edu_articles", :force => :cascade do |t|
    t.string "article_name"
    t.string "about_article"
    t.integer "doctor_id", :null => false
    t.datetime "created_at", :precision => 6, :null => false
    t.datetime "updated_at", :precision => 6, :null => false
    t.index ["doctor_id"], :name => "index_doctor_edu_articles_on_doctor_id"
  end

  create_table "doctors", :force => :cascade do |t|
    t.string "email", :default => "", :null => false
    t.string "encrypted_password", :default => "", :null => false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", :precision => 6, :null => false
    t.datetime "updated_at", :precision => 6, :null => false
    t.string "name"
    t.string "designation"
    t.string "location"
    t.index ["email"], :name => "index_doctors_on_email", :unique => true
    t.index ["reset_password_token"], :name => "index_doctors_on_reset_password_token", :unique => true
  end

  create_table "patients", :force => :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "problem"
    t.string "phone"
    t.string "email"
    t.integer "doctor_id", :null => false
    t.datetime "created_at", :precision => 6, :null => false
    t.datetime "updated_at", :precision => 6, :null => false
    t.datetime "oppointment_time"
    t.index ["doctor_id"], :name => "index_patients_on_doctor_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", :column => "blob_id"
  add_foreign_key "patients", "doctors"
end
