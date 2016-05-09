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

ActiveRecord::Schema.define(version: 20160502144730) do

  create_table "anggota_alat_kelengkapan", force: true do |t|
    t.string   "no_anggota"
    t.string   "nama"
    t.string   "foto_url"
    t.string   "fraksi"
    t.string   "daerah_pemilihan"
    t.string   "jabatan"
    t.string   "alat_kelengkapan"
    t.string   "page_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "anggota_dpr", force: true do |t|
    t.string   "no_anggota"
    t.string   "no_anggota_lengkap"
    t.string   "nama"
    t.string   "fraksi"
    t.string   "daerah_pemilihan"
    t.string   "foto_url"
    t.string   "agama"
    t.string   "tempat_lahir"
    t.string   "tanggal_lahir"
    t.text     "riwayat_pendidikan"
    t.text     "riwayat_pekerjaan"
    t.text     "riwayat_organisasi"
    t.text     "riwayat_pergerakan"
    t.text     "riwayat_penghargaan"
    t.text     "riwayat_kunjungan_luar_negri"
    t.string   "page_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "berita", force: true do |t|
    t.string   "kategori"
    t.string   "tanggal"
    t.string   "judul"
    t.string   "deskripsi"
    t.string   "page_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fraksi", force: true do |t|
    t.string   "nama"
    t.string   "singkatan"
    t.integer  "jumlah_anggota"
    t.string   "presentase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jdih", force: true do |t|
    t.string   "kategori"
    t.string   "tentang"
    t.string   "dokumen_url"
    t.date     "tanggal_ditetapkan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "legislasi", force: true do |t|
    t.string   "kategori"
    t.string   "tahun"
    t.string   "judul"
    t.string   "pengusul"
    t.string   "page_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sekretariat_alat_kelengkapans", force: true do |t|
    t.string   "nip"
    t.string   "nama"
    t.string   "foto_url"
    t.string   "jabatan"
    t.string   "alat_kelengkapan"
    t.string   "page_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
