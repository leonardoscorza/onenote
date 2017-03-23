class CreateTagsNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :tags_notes do |t|
      t.references :tag, foreign_key: true
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
