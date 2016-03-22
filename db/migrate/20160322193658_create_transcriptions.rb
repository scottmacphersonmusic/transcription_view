class CreateTranscriptions < ActiveRecord::Migration
  def change
    create_table :transcriptions do |t|
      t.string :song_title
      t.string :soloist

      t.timestamps null: false
    end
  end
end
