class AddMp3ToTranscriptions < ActiveRecord::Migration
  def change
    add_column :transcriptions, :mp3, :string
  end
end
