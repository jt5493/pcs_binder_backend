class ChangeDocumentToDocumentPath < ActiveRecord::Migration[6.0]
  def change
    rename_column :documents, :document, :doc_path
  end
end
