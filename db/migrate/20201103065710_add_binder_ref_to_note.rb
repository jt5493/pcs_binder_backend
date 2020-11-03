class AddBinderRefToNote < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :binder, null: false, foreign_key: true
  end
end
