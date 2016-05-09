class CreateFraksis < ActiveRecord::Migration
  def change
    create_table :fraksi do |t|
      t.string  :nama
      t.string  :singkatan
      t.integer  :jumlah_anggota
      t.string  :presentase
      t.timestamps
    end
  end
end
