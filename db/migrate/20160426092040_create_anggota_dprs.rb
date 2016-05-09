class CreateAnggotaDprs < ActiveRecord::Migration
  def change
    create_table :anggota_dpr do |t|
      t.string  :no_anggota
      t.string  :no_anggota_lengkap
      t.string  :nama
      t.string  :fraksi
      t.string  :daerah_pemilihan
      t.string  :foto_url
      t.string  :agama
      t.string  :tempat_lahir
      t.string  :tanggal_lahir
      t.text  :riwayat_pendidikan
      t.text  :riwayat_pekerjaan
      t.text  :riwayat_organisasi
      t.text  :riwayat_pergerakan
      t.text  :riwayat_penghargaan
      t.text  :riwayat_kunjungan_luar_negri
      t.string  :page_url
      t.timestamps
    end
  end
end
