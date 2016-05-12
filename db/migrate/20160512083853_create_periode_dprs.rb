class CreatePeriodeDprs < ActiveRecord::Migration
  def change
    create_table :periode_dpr do |t|
      t.string  :nama
      t.string  :periode
      t.timestamps
    end
  end
end
