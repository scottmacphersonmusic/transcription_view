class RenamePdfPathToFileName < ActiveRecord::Migration
  def change
    rename_column :transcriptions, :pdf_path, :file_name
  end
end
