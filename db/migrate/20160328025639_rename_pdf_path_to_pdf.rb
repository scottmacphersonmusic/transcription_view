class RenamePdfPathToPdf < ActiveRecord::Migration
  def change
    rename_column :transcriptions, :pdf_path, :pdf
  end
end
