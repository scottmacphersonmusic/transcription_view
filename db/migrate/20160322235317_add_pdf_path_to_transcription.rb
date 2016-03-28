class AddPdfPathToTranscription < ActiveRecord::Migration
  def change
    add_column :transcriptions, :pdf_path, :string
  end
end
