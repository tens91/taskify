class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :name
      t.text :body
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
