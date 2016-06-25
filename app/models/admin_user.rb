class AdminUser < ActiveRecord::Base
  # Explicitily specify tablename
  # self.table_name = "admin_users"

  # short_way
  attr_accessor :first_name

  # long_way
  def last_name
    @last_name
  end

  def last_name=(value)
    @last_name = value
  end
end
