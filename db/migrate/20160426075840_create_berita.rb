class CreateBerita < ActiveRecord::Migration
  def change
    create_table :berita do |t|
      t.string  :kategori
      t.string  :tanggal
      t.string  :judul
      t.string  :deskripsi
      t.string  :page_url
      t.timestamps
    end
  end
end
