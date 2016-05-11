class CreateJdihKategoris < ActiveRecord::Migration
  def change
    create_table :jdih_kategori do |t|
      t.string  :nama
      t.timestamps
    end
  end
end
