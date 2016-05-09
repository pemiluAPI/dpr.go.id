class CreateJdihs < ActiveRecord::Migration
  def change
    create_table :jdih do |t|
      t.string  :kategori
      t.string  :tentang
      t.string  :dokumen_url
      t.date  :tanggal_ditetapkan
      t.timestamps
    end
  end
end
