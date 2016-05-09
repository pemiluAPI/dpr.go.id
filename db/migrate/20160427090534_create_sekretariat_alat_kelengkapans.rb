class CreateSekretariatAlatKelengkapans < ActiveRecord::Migration
  def change
    create_table :sekretariat_alat_kelengkapans do |t|
      t.string  :nip
      t.string  :nama
      t.string  :foto_url
      t.string  :jabatan
      t.string  :alat_kelengkapan
      t.string  :page_url
      t.timestamps
    end
  end
end
