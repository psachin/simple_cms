class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
      t.references :page        # page_id
      t.string "name", :limit => 25
      t.integer "position"
      t.boolean "visible", :default => false
      t.string "content_type"
      t.text "content"
      t.timestamps null: false
    end
    add_index("sections", "page_id")
  end

  def down
    drop_table :sections
  end
end
