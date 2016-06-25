class CreateUsers < ActiveRecord::Migration
  # def change
  #   create_table :users do |t|

  #     t.timestamps null: false
  #   end
  # end

  def up
    create_table :users do |t|
      t.column "first_name", :string, :limit => 25
      # short-hand
      # t.string "first_name"

      t.string "last_name", :limit => 50
      t.string "email", :default => "user@example.com", :null => false
      t.string "password", :limit => 40

      # t.datetime "created_at"
      # t.datetime "updated_at"
      # short-hand
      t.timestamps null: false
    end
  end

  def down
    drop_table :users
  end
end
