class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rails, :string
    add_column :users, :generate, :string
    add_column :users, :migration, :string
    add_column :users, :add_password_digest_to_users, :string
  end
end
