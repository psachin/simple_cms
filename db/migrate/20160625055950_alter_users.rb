class AlterUsers < ActiveRecord::Migration
  # shorthand for up and down methods. But sometimes it is better to
  # write up and down methods for better granularity
  # def change
  #   rename_table("users", "admin_users")
  # end

  def up
    rename_table("users", "admin_users")
    add_column("admin_users", "username", :string, :limit => 25, :after => "email")
    change_column("admin_users", "email", :string, :limit => 100)
    rename_column("admin_users", "password", "hashed_password")
    puts "** Adding and index is next**"
    add_index("admin_users", "username")
  end

  def down
    # undo in reverse order
    remove_index("admin_users", "username")
    rename_column("admin_users", "hashed_password", "password")
    change_column("admin_users", "email", :string, :default => "", :null => false)
    remove_column("admin_users", "username")
    rename_table("admin_users", "users")
  end
end
