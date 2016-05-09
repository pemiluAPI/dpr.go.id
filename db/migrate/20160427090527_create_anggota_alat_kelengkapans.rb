class CreateAnggotaAlatKelengkapans < ActiveRecord::Migration
  def change
    create_table :anggota_alat_kelengkapan do |t|
      t.string  :no_anggota
      t.string  :nama
      t.string  :foto_url
      t.string  :fraksi
      t.string  :daerah_pemilihan
      t.string  :jabatan
      t.string  :alat_kelengkapan
      t.string  :page_url
      t.timestamps
    end
  end
end
