class CreateSubjects < ActiveRecord::Migration
  def up
    create_table :subjects do |t|
      t.column "name", :string, :limit => 25
      t.column "position", :integer
      t.column "visible",  :boolean, :default => false
      t.timestamps null: false
    end
  end

  def down
    drop_table :subjects
  end
end
