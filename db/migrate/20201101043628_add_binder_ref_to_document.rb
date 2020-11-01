class AddBinderRefToDocument < ActiveRecord::Migration[6.0]
  def change
    add_reference :documents, :binder, null: false, foreign_key: true
  end
end
