class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.date :release
      t.time :duration
      t.band_id :integer
      t.song_id :integer
      t.timestamps
    end
  end
end
