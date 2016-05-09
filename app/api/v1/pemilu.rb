module Pemilu
  class APIv1 < Grape::API
    version 'v1', using: :accept_version_header
    prefix 'api'
    format :json

    resource :berita do
      desc "Mengembalikan data berita"
      get do
        berita_array = []

        # Prepare conditions based on params
        valid_params = {
          kategori: 'kategori'
        }
        conditions = Hash.new
        valid_params.each_pair do |key, value|
          conditions[value.to_sym] = params[key.to_sym] unless params[key.to_sym].blank?
        end

        limit = ( params[:limit].to_i == 0 || params[:limit].empty? ) ? 100 : params[:limit]

        Berita.where(conditions)
          .limit(limit)
          .offset(params[:offset])
          .each do |data|

            berita_array << {
              id: data.id,
              kategori: data.kategori,
              tanggal: data.tanggal,
              judul: data.judul,
              deskripsi: data.deskripsi,
              page_url: data.page_url
            }

          end

        {
          results: {
            count: berita_array.count,
            total: Berita.where(conditions).count,
            data: berita_array
          }
        }
      end
    end

    resource :fraksi do
      desc "Mengembalikan data fraksi"
      get do
        fraksi_array = []

        Fraksi.all.each do |data|
            fraksi_array << {
              id: data.id,
              nama_fraksi: data.nama,
              singkatan: data.singkatan,
              jumlah_anggota: data.jumlah_anggota,
              presentase: data.presentase
            }
        end

        {
          results: {
            count: fraksi_array.count,
            total: Fraksi.all.count,
            data: fraksi_array
          }
        }
      end
    end

    resource :anggota_dpr do
      desc "Mengembalikan data anggota DPR"
      get do
        anggota_array = []

        # Prepare conditions based on params
        valid_params = {
          no_anggota: 'no_anggota',
          fraksi: 'fraksi',
          daerah_pemilihan: 'daerah_pemilihan'
        }
        conditions = Hash.new
        valid_params.each_pair do |key, value|
          conditions[value.to_sym] = params[key.to_sym] unless params[key.to_sym].blank?
        end

        limit = ( params[:limit].to_i == 0 || params[:limit].empty? ) ? 10 : params[:limit]

        AnggotaDpr.where(conditions)
          .limit(limit)
          .offset(params[:offset])
          .each do |data|

            anggota_array << {
              id: data.id,
              no_anggota: data.no_anggota,
              no_anggota_lengkap: data.no_anggota_lengkap,
              nama: data.nama,
              foto_url: data.foto_url,
              agama: data.agama,
              tempat_lahir: data.tempat_lahir,
              tanggal_lahir: data.tanggal_lahir,
              fraksi: data.fraksi,
              daerah_pemilihan: data.daerah_pemilihan,
              daftar_riwayat: {
                  riwayat_pendidikan: data.riwayat_pendidikan,
                  riwayat_pekerjaan: data.riwayat_pekerjaan,
                  riwayat_organisasi: data.riwayat_organisasi,
                  riwayat_pergerakan: data.riwayat_pergerakan,
                  riwayat_penghargaan: data.riwayat_penghargaan,
                  riwayat_kunjungan_luar_negri: data.riwayat_kunjungan_luar_negri
              },
              page_url: data.page_url
            }

          end

        {
          results: {
            count: anggota_array.count,
            total: AnggotaDpr.where(conditions).count,
            data: anggota_array
          }
        }
      end
    end

    resource :anggota_alat_kelengkapan do
      desc "Mengembalikan data anggota Alat Kelengkapan"
      get do
        anggota_array = []

        # Prepare conditions based on params
        valid_params = {
          no_anggota: 'no_anggota',
          fraksi: 'fraksi',
          daerah_pemilihan: 'daerah_pemilihan',
          alat_kelengkapan: 'alat_kelengkapan'
        }
        conditions = Hash.new
        valid_params.each_pair do |key, value|
          conditions[value.to_sym] = params[key.to_sym] unless params[key.to_sym].blank?
        end

        limit = ( params[:limit].to_i == 0 || params[:limit].empty? ) ? 10 : params[:limit]

        AnggotaAlatKelengkapan.where(conditions)
          .limit(limit)
          .offset(params[:offset])
          .each do |data|

            anggota_array << {
              id: data.id,
              no_anggota: data.no_anggota,
              nama: data.nama,
              foto_url: data.foto_url,
              fraksi: data.fraksi,
              daerah_pemilihan: data.daerah_pemilihan,
              jabatan: data.jabatan,
              alat_kelengkapan: data.alat_kelengkapan,
              page_url: data.page_url
            }

          end

        {
          results: {
            count: anggota_array.count,
            total: AnggotaAlatKelengkapan.where(conditions).count,
            data: anggota_array
          }
        }
      end
    end

    resource :sekretariat_alat_kelengkapan do
      desc "Mengembalikan data sekretariat Alat Kelengkapan"
      get do
        sekretariat_array = []

        # Prepare conditions based on params
        valid_params = {
          nip: 'nip'
        }
        conditions = Hash.new
        valid_params.each_pair do |key, value|
          conditions[value.to_sym] = params[key.to_sym] unless params[key.to_sym].blank?
        end

        limit = ( params[:limit].to_i == 0 || params[:limit].empty? ) ? 10 : params[:limit]

        SekretariatAlatKelengkapan.where(conditions)
          .limit(limit)
          .offset(params[:offset])
          .each do |data|

            sekretariat_array << {
              id: data.id,
              nip: data.nip,
              nama: data.nama,
              foto_url: data.foto_url,
              jabatan: data.jabatan,
              alat_kelengkapan: data.alat_kelengkapan,
              page_url: data.page_url
            }

          end

        {
          results: {
            count: sekretariat_array.count,
            total: SekretariatAlatKelengkapan.where(conditions).count,
            data: sekretariat_array
          }
        }
      end
    end

    resource :legislasi do
      desc "Mengembalikan data Program Legislasi Nasional DPR"
      get do
        legislasi_array = []

        # Prepare conditions based on params
        valid_params = {
          kategori: 'kategori',
          tahun: 'tahun'
        }
        conditions = Hash.new
        valid_params.each_pair do |key, value|
          conditions[value.to_sym] = params[key.to_sym] unless params[key.to_sym].blank?
        end

        limit = ( params[:limit].to_i == 0 || params[:limit].empty? ) ? 10 : params[:limit]

        Legislasi.where(conditions)
          .limit(limit)
          .offset(params[:offset])
          .each do |data|

            legislasi_array << {
              id: data.id,
              kategori: data.kategori,
              tahun: data.tahun,
              judul: data.judul,
              pengusul: data.pengusul,
              page_url: data.page_url
            }

          end

        {
          results: {
            count: legislasi_array.count,
            total: Legislasi.where(conditions).count,
            data: legislasi_array
          }
        }
      end
    end

    resources :jdih do
      desc "Mengembalikan data JDIH (Jaringan Dokumentasi dan Informasi Hukum)"
      get do
        jdih_array = []

        # Prepare conditions based on params
        valid_params = {
          kategori: 'kategori'
        }
        conditions = Hash.new
        valid_params.each_pair do |key, value|
          conditions[value.to_sym] = params[key.to_sym] unless params[key.to_sym].blank?
        end

        search = params[:tahun].blank? ? [] : ["YEAR(tanggal_ditetapkan) = ?", params[:tahun]]

        limit = ( params[:limit].to_i == 0 || params[:limit].empty? ) ? 10 : params[:limit]

        Jdih.where(conditions)
          .where(search)
          .limit(limit)
          .offset(params[:offset])
          .each do |data|

            jdih_array << {
              id: data.id,
              kategori: data.kategori,
              tentang: data.tentang,
              dokumen_url: data.dokumen_url,
              tanggal_ditetapkan: data.tanggal_ditetapkan
            }

          end

        {
          results: {
            count: jdih_array.count,
            total: Jdih.where(conditions).where(search).count,
            data: jdih_array
          }
        }
      end
    end
  end
end