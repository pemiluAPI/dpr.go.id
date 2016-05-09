class CreateLegislasis < ActiveRecord::Migration
  def change
    create_table :legislasi do |t|
      t.string  :kategori
      t.string  :tahun
      t.string  :judul
      t.string  :pengusul
      t.string  :page_url
      t.timestamps
    end
  end
end
