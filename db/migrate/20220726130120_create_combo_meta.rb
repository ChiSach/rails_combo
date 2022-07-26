class CreateComboMeta < ActiveRecord::Migration[7.0]
  def change
    create_table :combo_meta do |t|
      t.string :name_meta
      t.bigint :combo_id, null: false
      t.timestamps
    end
    add_foreign_key :combo_meta, :combos, on_delete: :restrict
  end
end
